class EmbeddedController < ApplicationController
  def signning
  end

  def create_signning
    begin
      request = HelloSign.create_embedded_signature_request(
        :test_mode => 1,
        :title => 'NDA with Acme Co.',
        :subject => 'The NDA we talked about',
        :message => 'Please sign this NDA and then we can discuss more. Let me know if you have any questions.',
        :signers => [{
            :email_address => params[:email],
            :name => params[:name]
          }
        ],
        :file_urls => ['https://www.dropbox.com/s/3j091o4n4sfx6q9/test.pdf']
      )

      signature_id = request.signatures[0]["signature_id"]

      embedded = HelloSign.get_embedded_sign_url :signature_id => signature_id
      @sign_url = embedded.sign_url
      render 'signning'
    rescue => e
      render :text => e
    end
  end

  def requesting
  end

  def create_requesting

      data = {
        :test_mode => 1,
        :signers => [{
            :email_address => params[:signer_email],
            :name => params[:signer_name]
          }
        ],
      }

      if params[:title]
        data[:title] = params[:title]
      end

      if params[:subject]
        data[:subject] = params[:subject]
      end

      if params[:message]
        data[:message] = params[:message]
      end

      data[:files] = params[:files]
      binding.pry
      request = HelloSign.create_embedded_signature_request data
      signature_id = request.signatures[0]["signature_id"]

      embedded = HelloSign.get_embedded_sign_url :signature_id => signature_id
      @sign_url = embedded.sign_url
      render 'requesting'

  end

  def template_requesting
  end

  def oauth_demo
  end
end
