class ApplicationMessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from('application_messages')
  end
end
