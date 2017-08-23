class Api::V1::JamsController < ApplicationController

      def create
        jam = Jam.new(jam_params)
        spread = jam.spread
        type = spread.type
        spread.cards = Card.draw(type.data[:card_num])
        spread.save
        spread.card_spreads.each_with_index do |card_spread, index|
          card_spread.flipped = rand(0..1) == 1
          card_spread.order = index
          card_spread.save
          end
        jam.save
        board = spread.build_board
        stories = jam.stories
        render json: {jam: jam, spread: {info: spread, cards: spread.cards, positions: spread.card_spreads, type: type, data: type.data, board: board}, stories: stories}
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
        params.require(:jam).permit(:name, :description, :spread => [:title, :description, :type_id, :jam_id])
      end
      # params.require(:measurement)
      # .permit(:name, :groundtruth => [:type, :coordinates => []])

end
