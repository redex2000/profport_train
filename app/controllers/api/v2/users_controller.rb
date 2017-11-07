module Api
  class V2::UsersController < ApplicationController
    skip_before_action :auth_by_token, only: [:sign_in, :sign_up]

    include ActionController::HttpAuthentication::Basic::ControllerMethods

    def sign_up
      user = User.new(json)
      if user.save
        render json: user, location: user
      else
        render json: user.errors, status: :unprocessable_entity
      end
    end

    def sign_in
      authenticate_with_http_basic do |email, password|
        @current_user = User.find_by(email: email)
        if @current_user.present? && @current_user.valid_password?(password)
          render json: @current_user.token
        else
          render json: 'Bad email', status: :unauthorized
        end
      end
    end
  end
end