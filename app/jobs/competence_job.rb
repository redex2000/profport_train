class CompetenceJob < ApplicationJob
  queue_as :default

  # Отложенное изучение компетенции
  def perform(*args)
    byebug
    Rails.logger.info "Learning competence #{args[0].id}"
    args[0].learn(args[1])
  end
end
