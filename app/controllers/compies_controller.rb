class CompiesController < ApplicationController
  def activity
    @compies = Compy.includes(:user, :competence).order(updated_at: :desc)
    @user_lines = User.online
  end
end
