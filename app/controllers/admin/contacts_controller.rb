class Admin::ContactsController < Admin::BaseController
  resource_controller

  def show
    contact = Contact.find(params[:id])
    #binding.pry
    @conversation = Conversation.find(contact.conversation_id)
    super
  end
  
  def new
      binding.pry
     super 
  end
  
  

  
end