class Api::V1::TypesController < ApplicationController


    def index
      types = Type.all
      types_json = types.map { |type|
        {type: type, data: type.data}
      }
      render json: types_json
    end

end
