class CompyChannel < ApplicationCable::Channel
  def subscribed
    current_user.appear
    ActionCable.server.broadcast "compy_channel", user: render(current_user), status: 'online', id: current_user.id
  end

  def follow
    stream_from "compy_channel"
  end

  def unsubscribed
    current_user.disappear
    ActionCable.server.broadcast "compy_channel", user: render(current_user), status: 'offline', id: current_user.id
  end

  private
    def render(user)
      ApplicationController.renderer.render(partial: 'users/user_line', locals: { user_line: user })
    end
end
