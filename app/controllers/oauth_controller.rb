class OauthController < ApplicationController
  def index
    @auth = HelloSign.get_oauth_token(:state => params[:state], :code => params[:code])
    binding.pry
    render :text => @auth
  end
end
