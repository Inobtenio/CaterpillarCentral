class Api::V1::RoomsController < Api::ApiV1Controller

	def create
		@room = Room.create(room_params)
		render @room
	end

	def edit
		@room = Room.find_by(token: params[:token])
		@room.update(status: params[:status])
		render @room
	end

	private

	def room_params
		params.permit(:name, :status)
	end
end