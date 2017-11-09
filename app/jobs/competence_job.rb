class CompetenceJob < ApplicationJob
  queue_as :default

  # Отложенное изучение компетенции
  def perform(*args)
    args[0].learn(args[1])
    CompetenceMailer.with(competence: args[0], user: args[1]).learn_later.deliver_now
  end
end
