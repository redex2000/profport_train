module Api
  class CompetencesController < ApplicationController
    def index
      render json: Competence.all
    end

    def show
      render json: Competence.find(params[:id])
    end
  end
end
