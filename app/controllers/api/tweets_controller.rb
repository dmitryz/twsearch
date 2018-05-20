# frozen_string_literal: true

module Api
  # Tweets Controller
  class TweetsController < ApplicationController
    def index
      render json: TweatsService.new.search(search_params[:query])
    end

    private

    def search_params
      params.permit(:query)
    end
  end
end
