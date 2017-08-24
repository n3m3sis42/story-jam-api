class Api::V1::StoriesController < ApplicationController
skip_before_action :authorized
    def create
      story = Story.create(story_params)
      jam = story.jam.build_api_data
      render json: {jam: jam, story: story}
    end

    def index
      stories = Story.all
      render json: stories
    end

    def show
      story = Story.find(params[:id])
      jam = story.jam.build_api_data
      render json: {jam: jam, story: story}
    end

    def update
      story = Story.find(params[:id])
      story.update(story_params)
      jam = story.jam.build_api_data
      render json: {jam: jam, story: story}
    end


    private

    def story_params
      params.require(:story).permit(:title, :content, :jam_id)
    end

end
