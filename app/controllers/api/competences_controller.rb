module Api
  class CompetencesController < ApplicationController
    def index
      render json: Competence.all
    end
  end
end
