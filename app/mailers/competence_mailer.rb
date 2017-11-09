class CompetenceMailer < ApplicationMailer
  def learn_later
    user = params[:user]
    @competence = params[:competence]
    mail to: user.email, subject: "Вы начали изучать компетенцию #{@competence.title}"
  end
end
