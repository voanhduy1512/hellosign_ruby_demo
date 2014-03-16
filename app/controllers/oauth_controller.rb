class OauthController < ApplicationController
  def index
    render :text => HelloSign.get_oauth_token(:state => params[:state], :code => params[:code])
  end
end
