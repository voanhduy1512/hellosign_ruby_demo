class OauthController < ApplicationController
  def index

    render :text => HelloSign.get_oauth_token params[:state], params[:code]
  end
end
