class BookController < ApplicationController
  def list
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @libs = Lib.all
  end

  def new
    @book = Book.new
    @libs = Lib.all
  end

  def book_params
    params.require(:books).permit(:name_book, :autor, :code, :publiching, :date_pub, :price, :date_start, :lib_id)
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to :action => 'list'
    else
      @libs = Lib.all
      render :action => 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
    @books = Book.all
  end

  def book_param
    params.require(:book).permit(:name_book, :autor, :code, :publiching, :date_pub, :price, :date_start, :lib_id)
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_param)
      redirect_to :action => 'show', :id => @book
    else
      @books = Book.all
      render :action => 'edit'
    end
  end

  def delete
    Book.find(params[:id]).destroy
    redirect_to :action => 'list'
  end



end

