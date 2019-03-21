module Api
  class DrugsController < ApplicationController
    def index
      render json: Drug.all.to_json
    end

    def show
      render json: Drug.find(params[:id]).to_json
    end
  end
end
