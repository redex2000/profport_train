class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  rescue_from Pundit::NotAuthorizedError do
    redirect_to root_path, alert: "У вас не прав на выполнение этой операции"
  end

  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.json
      format.xml
    end
  end

  def show
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
