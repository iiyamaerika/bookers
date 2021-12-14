class BooksController < ApplicationController
  def index
     @books = Book.all
     @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      flash.now[:notice] = "Book was successfully created."
      redirect_to book_path(book.id)
    else
      #投稿できなくなった時にどこのページに行くかを書く
    end
  end

  def edit
    @book = Book.all
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  def update
    @book = Book.all
    book = Book.find(params[:id])
    book.update(book_params)
    if book.update(book_params)
      flash.now[:notice] = "Book was successfully updated."
      redirect_to book_path(book)
    else
      #投稿できなくなった時にどこのページに行くかを書く
    end
  end



private
  def book_params
    params.require(:book).permit(:title,:body)
  end

end