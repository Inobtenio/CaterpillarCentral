class Api::V1::RoomsController < Api::ApiV1Controller

	def create
		@room = Room.create(room_params)
		render json: @room
	end

	def edit
		@room = Room.find_by(caster_id: params[:caster_id])
		@room.update(status: params[:status])
		render json: @room
	end

	private

	def room_params
		params.permit(:name, :status)
	end
end