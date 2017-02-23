class Api::V1::RoomsController < Api::ApiV1Controller

	def create
		Room.where(caster_id: room_params[:caster_id]).destroy_all
		@room = Room.new(room_params)
		@room.status = params[:status]
		@room.save
		render json: @room
	end

	def edit
		@room = Room.find_by(caster_id: params[:caster_id])
		@room.update(status: params[:status])
		render json: @room
	end

	def get
		@room = Room.find_by(token: params[:token])
		render json: @room
	end

	private

	def room_params
		params.permit(:name, :caster_id)
	end
end