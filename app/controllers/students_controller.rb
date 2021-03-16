class StudentsController < ApplicationController

  def index
  end

  def show
    find_student
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(first_name: student_params[:first_name], last_name: student_params[:last_name])
    redirect_to student_path(@student)
  end

  def edit
    find_student
  end

  def update
    find_student
    @student.update(first_name: student_params[:first_name], last_name: student_params[:last_name])
    
    redirect_to student_path(@student)
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student)
  end

end
