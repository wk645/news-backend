class Api::V1::AuthController < ApplicationController

	def create
		user = User.find_by(username: params[:username])
		if user && user.authenticate(params[:password])
			payload = { user_id: user.id }
			token = issue_token(payload)
			render json: {user: user, news: user.news, jwt: token}
		else
			render json: {message: 'Invalid username or password! Please try again.'}
		end
	end
end
