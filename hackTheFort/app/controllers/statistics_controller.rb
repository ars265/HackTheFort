class StatisticsController < ActionController::API
  
	def index
		render "index"
	end

	def show
		corpId = params[:id]
		render "index"
	end

end