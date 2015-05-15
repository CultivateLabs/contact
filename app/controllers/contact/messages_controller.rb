require_dependency "contact/application_controller"

module Contact
  class MessagesController < ApplicationController
    respond_to :js, only: :create
    before_action :load_message, only: :create

    def new
      @message = Message.new
    end

    def create
      MessageMailer.new_message(@message).deliver if @message.valid?
      respond_with json: @message
    end

  private
    def load_message
      @message = Message.new(params[:message])
      @form = Form.find(params[:form_id]) if params[:form_id].present?
      @message.to_email = @form.present? ? @form.to_email : Contact.to_email
      @message.subject = @form.present? ? @form.subject : Contact.subject
    end
  end
end
