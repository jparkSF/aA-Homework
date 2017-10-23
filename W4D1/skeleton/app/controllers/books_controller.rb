class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    render :new
  end

  def create
    book = Book.new(book_params)
    if book.save
      redirect_to books_path
    else
      fail 'not saved'
      render :new
    end
  end

  def destroy
    if Book.find(params[:id]).destroy
      redirect_to books_path
    else
      fail 'something wrong'
    end

  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
