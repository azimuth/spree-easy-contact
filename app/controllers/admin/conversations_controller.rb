class Admin::ConversationsController < Admin::BaseController
  resource_controller

  def complete
    @conversation = Conversation.find(params[:id])
    @conversation.status = "closed"
    @conversation.save
    redirect_to :action => :show
  end
end