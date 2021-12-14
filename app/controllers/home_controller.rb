class HomeController < ApplicationController
  def index
  end
  def create
    redirect_to book_path(book.id) 
  end
end
