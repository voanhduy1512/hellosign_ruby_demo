class EmbeddedController < ApplicationController
  def signning
    @sign_url = "https://www.hellosign.com/editor/embeddedSign?signature_id=a4a9cf999e33ae75c052e48c91b32832&token=11dc0f144e3bb48601201176560c1e23"
  end

  def create_signning
    @sign_url = "https://www.hellosign.com/editor/embeddedSign?signature_id=a4a9cf999e33ae75c052e48c91b32832&token=11dc0f144e3bb48601201176560c1e23"
    render 'signning'
  end

  def requesting
  end

  def template_requesting
  end

  def oauth_demo
  end
end
