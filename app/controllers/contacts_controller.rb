class ContactsController < ApplicationController
    def new
      @contact = Contact.new
    end
  
    def create
      @contact = Contact.new(params[:contact])
      @contact.request = request
      if @contact.deliver
        flash.now[:notice] = 'Merci pour votre message. Nous vous contacterons bientôt!'
      else
        flash.now[:error] = "Impossible d'envoyer le mail"
        render :new
      end
    end
  end