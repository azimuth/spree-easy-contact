class Admin::ConversationsController < Admin::BaseController
  resource_controller

  def complete
    @conversation = Conversation.find(params[:id])
    @conversation.status = "closed"
    @conversation.save
    redirect_to :action => :show
  end
  
  def index
    @requested_scope = params[:search]
    @requested_scope ||= 'open'
    @conversations = case @requested_scope
      when 'all'
        Conversation.all 
      when 'closed'
        Conversation.closed.all
      else
        Conversation.open.all
    end
  end
  
end