class StatisticsController < ActionController::API
  
	def index
		render "show"
	end

	def show
		corpId = params[:id]
		render "index"
	end

end