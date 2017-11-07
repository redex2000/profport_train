module Api
  class V2::CompetencesController < CompetencesController
    def create
      competence = Competence.new json
      if competence.save
        render json: competence
      else
        render json: competence.errors.full_messages, status: :unprocessible_untity
      end
    end
  end
end