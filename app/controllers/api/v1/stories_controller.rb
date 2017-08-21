class Api::V1::StoriesController < ApplicationController

    def create
      story = Story.create(story_params)
      render json: story
    end

    def index
      stories = Story.all
      render json: stories
    end

    def show
      story = Story.find(params[:id])
      render json: story
    end

    def update
      story = Story.find(params[:id])
      story.update(story_params)
      render json: story
    end


    private

    def story_params
      params.require(:story).permit(:title, :description, :type_id)
    end

end
