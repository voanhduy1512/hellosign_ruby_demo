class OauthController < ApplicationController
  def index
    @auth = HelloSign.get_oauth_token(:state => params[:state], :code => params[:code])
    session[:auth_token] = @auth["auth_token"]
  end
end
