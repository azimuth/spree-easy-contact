class Admin::ContactsController < Admin::BaseController
  resource_controller

  def create
    unless params[:contact][:conversation_id]
      @conversation = Conversation.new
      params[:contact][:conversation_id] = @conversation
    end
    super
  end
  
end