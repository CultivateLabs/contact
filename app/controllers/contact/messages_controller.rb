require_dependency "contact/application_controller"

module Contact
  class MessagesController < ApplicationController
    layout "application"
    respond_to :js, only: :create

    def new
      @message = Message.new
    end

    def create
      @message = Message.new(params[:message])
      MessageMailer.new_message(@message).deliver if @message.valid?
      respond_with json: @message
    end
  end
end
