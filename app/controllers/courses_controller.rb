class CoursesController < ApplicationController

  def show
    course = Course.find(params[:id])
    render json: course
  end

  def index
  	user = User.find(params[:user_id])
    courses = User.courses
    render json: courses, each_serializer: CoursesSerializer
  end

end
