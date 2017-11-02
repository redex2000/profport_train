class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :auth_user

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

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to users_path, notice: "Пользователь создан успешно"
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "Пользователь отредактирован успешно"
    end
  end

  def destroy
    if @user.destroy
      redirect_to @user, notice: "Пользователь удалён успешно"
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

  def set_user
    @user = User.find params[:id]
  end

  def auth_user
    # authorize User
  end
end
