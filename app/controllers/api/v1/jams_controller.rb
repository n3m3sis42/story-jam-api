class Api::V1::JamsController < ApplicationController

      def create
        jam = Jam.new(jam_params)
        render json: jam
      end

      def show
        jam = Jam.find(params[:id])
        spread = Spread.find(jam.spread.id)
        type = Type.find(spread.type.id)
        cards = jam.cards
        stories = jam.stories
        render json: {jam: jam, spread: spread, type: type, data: type.data, cards: cards, stories: stories}
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
