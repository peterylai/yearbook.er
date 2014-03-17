class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		redirect_to user_path(@user)
	end

	def show
	end

	def edit
		@user = User.find(params[:id])
	end

	def update 
		@user = User.find(params[:id])
		@user.update(user_params)
		redirect_to user_path(@user)
	end

	private
	def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :email, :github, :linkedin, :bio, :profile_pic, :admin, :website, :employer, :password, :password_confirmation)
  end
  
end