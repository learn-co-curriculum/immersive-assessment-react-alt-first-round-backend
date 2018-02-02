class StudentsController < ApplicationController

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    student.save
    render json: student
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def index
    user = User.find(params[:user_id])

    students = User.students
    render json: students, each_serializer: StudentSerializer
  end

  private

  def student_params
    params.require(:student).permit(:name, :percentage, :class_year)
  end
end
