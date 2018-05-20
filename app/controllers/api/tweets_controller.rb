module Api
  class TweetsController < ApplicationController
    def index
      render json: TweatsService.new.search(search_params)
    end

  private
    def search_params
      params.permit(:query)
    end
  end
end
