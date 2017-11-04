class TermsController < ApplicationController
  def learn
    term = Term.find params[:id]
    concept = Concept.new term: term, user: current_user
    if concept.save
      flash[:notice] = "Вы начали изучать термин"
    else
      flash[:error] = "Произошла ошибка во время изучения"
      logger.error concept.errors.full_messages.first
      p concept.errors.full_messages.first
    end
    redirect_to term.competence
  end
end
