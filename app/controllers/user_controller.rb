class UserController < ApplicationController
  def list
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @libs = Lib.all
  end

  def new
    @user = User.new
    @libs = Lib.all
  end
  def user_params
    params.require(:users).permit(:number_ticket, :user_last_name, :user_name, :user_second_name, :user_adres, :phone, :lib_id)
  end
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to :action => 'list'
    else
      @libs = Lib.all
      render :action => 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    @users = User.all
  end

  def user_param
    params.require(:user).permit(:number_ticket, :user_last_name, :user_name, :user_second_name, :user_adres, :phone, :lib_id)
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_param)
      redirect_to :action => 'show', :id => @user
    else
      @users = User.all
      render :action => 'edit'
    end
  end

  def delete
    User.find(params[:id]).destroy
    redirect_to :action => 'list'
  end



end

