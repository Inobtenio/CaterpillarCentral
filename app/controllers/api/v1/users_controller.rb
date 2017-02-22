class Api::V1::UsersController < Api::ApiV1Controller

	def create
		@user = User.create(user_params)
		render @user
	end

	def index
		@users = User.where(room: Room.find_by_token(params[:token]))
		render @users
	end

	private

	def user_params
		params.permit(:name, :facebook_id, :profile_picture)
	end
end