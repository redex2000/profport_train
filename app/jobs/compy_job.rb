class CompyJob < ApplicationJob
  queue_as :default

  def perform(compy)
    ActionCable.server.broadcast "compy_channel", message: render_event(compy)
  end

  private
    def render_event(compy)
      ApplicationController.renderer.render(partial: 'compies/compy', locals: { compy: compy })
    end
end
