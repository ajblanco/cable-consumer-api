# frozen_string_literal: true

module Facts
  # Class
  class EventsConsumer < ApplicationConsumer
    private

    def consume
      ActionCable.server.broadcast(
        'application_messages',
        message: 'C O N S U M E R'
      )
    rescue => e
      Rails.logger.error(e)
    end
  end
end
