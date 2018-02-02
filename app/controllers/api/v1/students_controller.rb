class Api::V1::StudentsController < ApplicationController

  def update
    student = Student.find(params[:id])
    if student.user.id == params[:user_id].to_i
      student.update(student_params)
      student.save
      render json: student
    else
      render json: {message: "Whoa! Hands to yourself! This ain't your student!"}
    end
    
  end

  def show
    student = Student.find(params[:id])
    if student.user.id == params[:user_id].to_i
      render json: student
    else
      render json: {message: "Whoa! Hands to yourself! This ain't your student!"}
    end
  end

  def index
    user = User.find(params[:user_id])

    students = user.students
    render json: students, each_serializer: StudentSerializer
  end

  private

  def student_params
    params.require(:student).permit(:name, :percentage, :class_year)
  end
end
