class AccountsController < ApplicationController
  # protect_from_forgery unless: -> { request.format.json? }

  def index
    ActionCable.server.broadcast('application_messages', message: 'C O N T R O L L E R')
    head 200
  end
end
