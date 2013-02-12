class Admin::ContactsController < Admin::BaseController
  resource_controller
  
  def create
    @contact = Conversation.find(params[:contact][:conversation_id]).contacts.build(params[:contact])
    @contact.name = current_user.email.split('@').first
    @contact.email = current_user.email
    respond_to do |format|
      if @contact.valid? &&  @contact.save
        ContactMailer.response_email(@contact).deliver
        flash[:notice] =  t("message_sent")
        format.html { redirect_to("/admin/conversations/#{@contact.conversation.id}") }
      else
        flash[:notice] = @contact.errors.map{|f,e| "#{f.to_s.humanize} #{e}"}.join(' and ')
        format.html { redirect_to("/admin/conversations/#{@contact.conversation.id}") }
      end
    end
  end
  
end