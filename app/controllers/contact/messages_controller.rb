require_dependency "contact/application_controller"

module Contact
  class MessagesController < ApplicationController
    layout "application"

    def new
      @message = Message.new
    end

    def create
      @message = Message.new(params[:message])
      if @message.valid?
        MessageMailer.new_message(@message).deliver
        flash[:notice] = "Message sent! Thank you for contacting us."
        redirect_to contact_url
      else
        render :action => 'new'
      end
    end
  end
end
