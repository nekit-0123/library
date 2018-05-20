class EmployeesController < ApplicationController


  def list
  @employees = Employee.all
end

def show
  @libs = Lib.all
  @employee = Employee.find(params[:id])

end


def new
  @employee = Employee.new
  @libs = Lib.all
end

def employee_params
  params.require(:employees).permit(:name, :last_name, :lib_id, :second_name, :birth_date, :job_date, :position, :education)
end


def create
  @employee = Employee.new(employee_params)

  if @employee.save
    redirect_to :action => 'list'
  else
    @libs = Lib.all

    render :action => 'new'

  end

end


def edit
  @employee = Employee.find(params[:id])
  @libs = Lib.all
end

def update
  @employee = Employee.find(params[:id])

  if @employee.update_attributes(employee_param)
    redirect_to :action => 'show', :id => @employee
  else
    @libs = Lib.all
    render :action => 'edit'
  end

end

def employee_param
  params.require(:employee).permit(:name, :last_name,:subject_id, :lib_id, :second_name, :birth_date, :job_date, :position, :education)
end

def delete

  Employee.find(params[:id]).destroy
  redirect_to :action => 'list'
end



end
