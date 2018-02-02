class Admin::UsersController < ApplicationController

	def index
		@users = User.all
		render json: @users

	end

	def generate
		success = Generator.generate_users(params[:num_students].to_i)

		if success
			render json: success
		else
			render json: {message: "Oops! Looks like something failed!"}
		end
	end

	def clear
		begin
			User.destroy_all
			render json: {message: "Successfully destroyed all records"}
		rescue
			render json: {message: "Oops! Looks like something failed!"}
		end
	end

end
