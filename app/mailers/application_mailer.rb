# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: proc { User.admin.first&.email || Rails.configuration.x.profport_train.admin_mail }
  layout "mailer"
end
