class OauthController < ApplicationController
  def index
    begin
      render :text => HelloSign.get_oauth_token(:state => params[:state], :code => params[:code])
    rescue => e
      render :text => e
    end
  end
end
