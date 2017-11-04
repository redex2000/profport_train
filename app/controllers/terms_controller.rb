class TermsController < ApplicationController
  def learn
    @term = Term.find params[:id]
    concept = Concept.new term: @term, user: current_user
    respond_to do |format|
      if concept.save
        format.html { redirect_to @term.competence, notice: "Вы начали изучать термин" }
        format.js
      else
        format.html { redirect_to @term.competence, error: "Произошла ошибка во время изучения" }
        format.js { alert("Ошибка!") }
      end
    end
  end
end
