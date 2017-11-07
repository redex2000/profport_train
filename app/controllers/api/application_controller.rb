class Api::ApplicationController < ApplicationController
  protect_from_forgery with: :null_session
  # skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!
  before_action :parse_request
  before_action :auth_by_token

  attr_reader :json, :current_user

  include ActionController::HttpAuthentication::Token::ControllerMethods

  private
  def json_request?
    request.format.json?
  end

  def parse_request
    body = request.body.read
    @json = JSON.parse(body) if body.present?
  end

  def auth_by_token
    unless authenticate_with_http_token { |token, options| @current_user = User.find_by token: token }
      render json: 'Bad token', status: :unauthorized
    end
  end
end
