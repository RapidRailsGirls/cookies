class CookiesController < ApplicationController

  def create
    num_cookies = params['num_cookies'].to_i
    if rand(2) == 0
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
    else
      message = "An error happened!"
      respond_to do |format|
        format.html do
          flash[:error] = message
          redirect_to root_path
        end
        format.json do
          render :json => {"message" => message}, :status => 500
        end
      end
    end
  end

end
