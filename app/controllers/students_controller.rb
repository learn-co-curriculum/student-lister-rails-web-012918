class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    session[:variety] = 'peanut_butter'
    @student = Student.find_by(id: params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    byebug
    if @student.save
      redirect_to @student
    else
      render :new
    end

  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :dob)
  end
end
