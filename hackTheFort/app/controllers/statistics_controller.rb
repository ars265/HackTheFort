class StatisticsController < ActionController::API
  
	def index
		render "show"
	end

	def show
		corpId = params[:id]
		if !params[:year].blank? then
			@year = params[:year]
		else
			@year = "2014"
		end
		render "index"
	end

end