class EmbeddedController < ApplicationController
  def signning
  end

  def create_signning
    request = HelloSign.create_embedded_signature_request(
      :test_mode => 1,
      :title => 'NDA with Acme Co.',
      :subject => 'The NDA we talked about',
      :message => 'Please sign this NDA and then we can discuss more. Let me know if you have any questions.',
      :signers => [{
          :email_address => params[:email],
          :name => params[:name],
          :order => 0,
        }
      ],
      :cc_email_addresses => ['lawyer@hellosign.com', 'lawyer@example.com'],
      :files => [File.join(Rails.public_path, 'test.pdf'), File.join(Rails.public_path, 'test1.pdf')]
    )
    signature_id = request.signatures[0][:signature_id]
    embedded = HelloSign.get_embedded_sign_url :signature_id => signature_id
    @sign_url = embedded.sign_url
    render 'signning'
  end

  def requesting
  end

  def template_requesting
  end

  def oauth_demo
  end
end
