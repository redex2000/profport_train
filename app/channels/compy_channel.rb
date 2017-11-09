class CompyChannel < ApplicationCable::Channel
  def subscribed
  end

  def follow
    stream_from "compy_channel"
  end

  def unsubscribed
  end
end
