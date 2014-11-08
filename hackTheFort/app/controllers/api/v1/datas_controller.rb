module Api
  module V1
    class DatasController < ApplicationController
      # GET /datas
      # GET /datas.json
      def index
        @datas = Data.all

        render json: @datas
      end

      # GET /datas/1
      # GET /datas/1.json
      def show
        @data = Data.find(params[:id])

        render json: @data
      end

      # POST /datas
      # POST /datas.json
      def create
        @data = Data.new(data_params)

        if @data.save
          render json: @data, status: :created, location: @data
        else
          render json: @data.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /datas/1
      # PATCH/PUT /datas/1.json
      def update
        @data = Data.find(params[:id])

        if @data.update(data_params)
          head :no_content
        else
          render json: @data.errors, status: :unprocessable_entity
        end
      end

      # DELETE /datas/1
      # DELETE /datas/1.json
      def destroy
        @data = Data.find(params[:id])
        @data.destroy

        head :no_content
      end
###################################################################################################################
      def get_stat_index
        require 'open-uri'
        @file_handle = open("http://indianalearns.info/api/v1/")

        render json: @file_handle
      end

      def get_stat

      end
###################################################################################################################
      private

      def data_params
        params[:data]
      end
    end

  end
  end
