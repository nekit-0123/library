class LibController < ApplicationController
  layout 'standard'
  def list
    @libs = Lib.all
  end

  def show
    @lib = Lib.find(params[:id])
  end

  def new
    @lib = Lib.new
   
    @libs = Lib.all
  end


  def lib_params
    params.require(:lib).permit(:libs_name, :libs_adres, :libs_number)
  end

  def create
    @lib = Lib.new(lib_params)

    if @lib.save
      redirect_to :action => 'list'
    else
      @libs = Lib.all
      render :action => 'new'
    end

  end


  def edit
    @lib = Lib.find(params[:id])
    @libs = Lib.all
  end

  def lib_param
    params.require(:lib).permit(:libs_name, :libs_adres, :libs_number)
  end

  def update
    @lib = Lib.find(params[:id])

    if @lib.update_attributes(lib_param)
      redirect_to :action => 'show', :id => @lib
    else
      @libs = Lib.all
      render :action => 'edit'
    end
  end

  def delete
    Lib.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  def show_libras
    @lib = Lib.find(params[:id])
  end
  end
