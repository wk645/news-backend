class Api::V1::UsersController < ApplicationController

	before_action :authorized, only: [:show]

	def create
		@user = User.new(fullname: params[:fullname], email: params[:email], username: params[:username], password: params[:password])
		if @user.save
			payload = {user_id: @user.id}
			render json: {user: @user, jwt: issue_token(payload), success: 'Welcome to News Plan #{@user.username}!'}
		else
			render json: {message: 'Invalid credentials!'}
		end
	end

	def show
		render json: {user: current_user, news: current_user.news}
	end

end
