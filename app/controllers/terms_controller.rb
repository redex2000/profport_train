class TermsController < ApplicationController
  def learn
    @term = Term.find params[:id]
    respond_to do |format|
      if @term.learn(current_user, Competence.find(params[:competence_id]))
        format.html { redirect_to @term.competence, notice: "Вы начали изучать термин" }
        format.js
      else
        format.html { redirect_to @term.competence, error: "Произошла ошибка во время изучения" }
        format.js { alert("Ошибка!") }
      end
    end
  end

  def index
    @terms = Term.includes(:competence)
  end

  def show
    @term = Term.find(params[:id])
  end
end
