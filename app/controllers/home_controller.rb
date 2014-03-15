class HomeController < ApplicationController
  def index
    # @account = HelloSign.get_account
  end

  def callback
    render :text => 'success'
  end
end
