class ContactsController < ApplicationController

  def contact_us
    
    if request.get?
      @contact = Contact.new

    elsif request.post?
      @contact = Contact.new(params[:contact])
      @contact.save
    end
  end
end
