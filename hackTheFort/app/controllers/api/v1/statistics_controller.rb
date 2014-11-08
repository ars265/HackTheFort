module Api
  module V1
    class StatisticsController < ApplicationController
      # GET /statistics
      # GET /statistics.json
      def index
        @statistics = Statistic.all

        render json: @statistics
      end

      # GET /statistics/1
      # GET /statistics/1.json
      def show
        @statistic = Statistic.find(params[:id])

        render json: @statistic
      end

      # POST /statistics
      # POST /statistics.json
      def create
        @statistic = Statistic.new(statistic_params)

        if @statistic.save
          render json: @statistic, status: :created, location: @statistic
        else
          render json: @statistic.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /statistics/1
      # PATCH/PUT /statistics/1.json
      def update
        @statistic = Statistic.find(params[:id])

        if @statistic.update(statistic_params)
          head :no_content
        else
          render json: @statistic.errors, status: :unprocessable_entity
        end
      end

      # DELETE /statistics/1
      # DELETE /statistics/1.json
      def destroy
        @statistic = Statistic.find(params[:id])
        @statistic.destroy

        head :no_content
      end

      private

      def statistic_params
        params[:statistic]
      end
    end

  end
end