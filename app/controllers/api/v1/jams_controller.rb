class Api::V1::JamsController < ApplicationController

      def create
        jam = Jam.create(jam_params)
        render json: jam
      end

      def index
        jams = Jam.all
        render json: jams
      end

      def update
        jam = Jam.find(params[:id])
        jam.update(jam_params)
        render json: jam
      end


      private

      def jam_params
        params.require(:jam).permit(:name, :description)
      end

end
