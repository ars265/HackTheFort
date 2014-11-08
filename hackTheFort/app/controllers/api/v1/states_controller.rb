module Api
  module V1
    class StatesController < ApplicationController
      # GET /states
      # GET /states.json
      def index
        @states = State.all

        render json: @states
      end

      # GET /states/1
      # GET /states/1.json
      def show
        @state = State.find(params[:id])

        render json: @state
      end

      # POST /states
      # POST /states.json
      def create
        @state = State.new(state_params)

        if @state.save
          render json: @state, status: :created, location: @state
        else
          render json: @state.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /states/1
      # PATCH/PUT /states/1.json
      def update
        @state = State.find(params[:id])

        if @state.update(state_params)
          head :no_content
        else
          render json: @state.errors, status: :unprocessable_entity
        end
      end

      # DELETE /states/1
      # DELETE /states/1.json
      def destroy
        @state = State.find(params[:id])
        @state.destroy

        head :no_content
      end

      private

      def state_params
        params[:state]
      end
    end

  end
end