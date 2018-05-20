class OutController < ApplicationController
  def list
    @books = Book.all
    @users = User.all
    @outs = Out.all


  end

  def show
    @out = Out.find(params[:id])
    @books = Book.all
    @users = User.all
  end

  def new
    @out = Out.new
    @books = Book.all
    @users = User.all
  end

  def out_params
    params.require(:outs).permit(:date_grant, :date_return, :book_id, :user_id)
  end

  def create
    @out = Out.new(out_params)

    if @out.save
      redirect_to :action => 'list'
    else
      @books = Book.all
      @users = User.all
      render :action => 'new'
    end
  end

  def edit
    @out = Out.find(params[:id])
    @outs = Out.all
    @users = User.all
    @books = Book.all
  end

  def out_param
    params.require(:out).permit(:date_grant, :date_return, :book_id, :user_id)
  end

  def update
    @out = Out.find(params[:id])

    if @out.update_attributes(out_param)
      redirect_to :action => 'show', :id => @out
    else
      @outs = Out.all
      render :action => 'edit'
    end
  end

  def delete
    Out.find(params[:id]).destroy
    redirect_to :action => 'list'
  end




end