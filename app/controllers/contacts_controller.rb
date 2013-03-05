class ContactsController < Spree::BaseController
  before_filter :load_topics
  
  def new
    @conversation = Conversation.new
    @contact = Contact.new(:conversation => @conversation)
  end
  
  def edit
    redirect_to new_contact_path
  end

  def create
    @conversation = Conversation.create(:status => "open", :topic_id => params[:conversation][:topic])
    params[:contact][:conversation_id] = @conversation
    @contact = @conversation.contacts.build(params[:contact] || {})
    respond_to do |format|
      if verify_recaptcha(@contact) && @contact.valid? && @contact.save
        ContactMailer.message_email(@contact).deliver
        ContactMailer.message_received_email(@contact).deliver
        format.html { redirect_to(root_path, :notice => t("message_sent")) }
      else
        if @conversation.contacts.count == 0
          @conversation.destroy
        end
        format.html { render :action => "new" }
      end
    end
  end
  
  private
  def load_topics
    @topics = Topic.all
  end
end