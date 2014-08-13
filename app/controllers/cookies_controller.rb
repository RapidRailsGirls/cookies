class CookiesController < ApplicationController

  def create
    num_cookies = params['num_cookies'].to_i
    num_cookies.times do
      Cookie.create
    end
    message = "#{num_cookies} #{num_cookies == 1 ? 'cookie was' : 'cookies were'} created"
    respond_to do |format|
      format.html do
        flash[:info] = message
        redirect_to root_path
      end
      format.json do
        render :json => {"message" => message}
      end
    end
  end

end
