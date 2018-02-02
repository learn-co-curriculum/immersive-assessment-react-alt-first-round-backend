class CoursesController < ApplicationController

  def show
    course = Course.find(params[:id])

    if course.user.id == params[:user_id].to_i
    	render json: course
    else
    	render json: {message: "Whoa! Hands to yourself! This ain't your course!"}
    end
  end

  def index
  	user = User.find(params[:user_id])
    courses = user.courses
    render json: courses, each_serializer: CoursesSerializer
  end

end
