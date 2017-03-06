class Api::V1::BookitemsController < Api::V1::ApiController

	def index
		render json: Bookitem.all
	end
end
