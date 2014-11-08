module Api
  module V1
    class StatisticsController < ApplicationController
      # GET /statistics
      # GET /statistics.json
      def index
        @statistics = Statistic.all

        @districts = open("http://indianalearns.info/api/v1/corporations")
        @schools = open("http://indianalearns.info/api/v1/schools")
        @istep_results_district = open("http://indianalearns.info/api/v1/reports/corporation/istep")
        @istep_results_school = open("http://indianalearns.info/api/v1/reports/school/public_istep")
        @istep_results_school_nonpublic = open("http://indianalearns.info/api/v1/reports/school/nonpublic_istep")
        @grad_rate_corp = open("http://indianalearns.info/api/v1/reports/corporation/graduation_rates")
        @grad_rate_school = open("http://indianalearns.info/api/v1/reports/school/graduation_rates")
        @corp_enrollment = open("http://indianalearns.info/api/v1/reports/corporation/enrollment")
        @school_enrollment = open("http://indianalearns.info/api/v1/reports/school/iread")
        @corp_iread = open("http://indianalearns.info/api/v1/reports/corporation/iread")
        @school_iread = open("http://indianalearns.info/api/v1/reports/school/iread")
        @school_attendance = open("http://indianalearns.info/api/v1/reports/school/attendance")
        @corp_attendance = open("http://indianalearns.info/api/v1/reports/corporation/attendance")

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

#############################################################################################################
#                               HELPER METHODS
      def get_districts
        @districts = open("http://indianalearns.info/api/v1/corporations")

        render json: @districts
      end

      def get_schools
        @schools = open("http://indianalearns.info/api/v1/schools")

        render json: @schools
      end
      def get_istep_results_district
        @istep_results_district = open("http://indianalearns.info/api/v1/reports/corporation/istep")

        render json: @istep_results_district
      end
      def get_istep_results_school
        @istep_results_school = open("http://indianalearns.info/api/v1/reports/school/public_istep")

        render json: @istep_results_school
      end
      def get_istep_results_school_nonpublic
        @istep_results_school_nonpublic = open("http://indianalearns.info/api/v1/reports/school/nonpublic_istep")

        render json: @istep_results_school_nonpublic
      end
      def get_grad_rate_corp
        @grad_rate_corp = open("http://indianalearns.info/api/v1/reports/corporation/graduation_rates")

        render json: @grad_rate_corp
      end
      def get_grad_rate_school
        @grad_rate_school = open("http://indianalearns.info/api/v1/reports/school/graduation_rates")

        render json: @grad_rate_school
      end
      def get_corp_enrollment
        @corp_enrollment = open("http://indianalearns.info/api/v1/reports/corporation/enrollment")

        render json: @corp_enrollment
      end
      def get_school_enrollment
        @school_enrollment = open("http://indianalearns.info/api/v1/reports/school/iread")

        render json: @school_enrollment
      end
      def get_corp_iread
        @corp_iread = open("http://indianalearns.info/api/v1/reports/corporation/iread")

        render json: @corp_iread
      end
      def get_school_iread
        @school_iread = open("http://indianalearns.info/api/v1/reports/school/iread")

        render json: @school_iread
      end
      def get_school_attendance
        @school_attendance = open("http://indianalearns.info/api/v1/reports/school/attendance")

        render json: @school_attendance
      end
      def get_corp_attendance
        @corp_attendance = open("http://indianalearns.info/api/v1/reports/corporation/attendance")

        render json: @corp_attendance
      end



#############################################################################################################
      private

      def statistic_params
        params[:statistic]
      end
    end

  end
end