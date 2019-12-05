
class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  def create
    session[:form_params] = params.inspect
    student[first_name]
    student[last_name]
    redirect_to new_student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end