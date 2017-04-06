class MessageChannel < ApplicationCable::Channel
  def subscribed
    stream_from "message"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
  	ActionCable.server.broadcast "message",
                                 message: data
  end
end
