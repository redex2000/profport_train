class Api::ApplicationController < ApplicationController
  protect_from_forgery with: :null_session
  # skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!
  before_action :parse_request

  attr_reader :json

  private
  def json_request?
    request.format.json?
  end

  def parse_request
    body = request.body.read
    @json = JSON.parse(body) if body.present?
  end
end
