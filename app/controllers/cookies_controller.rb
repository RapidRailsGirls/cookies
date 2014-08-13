class CookiesController < ApplicationController

  def create
    num_cookies = params['num_cookies'].to_i
    num_cookies.times do
      Cookie.create
    end
    flash[:info] = "#{num_cookies} #{num_cookies == 1 ? 'cookie was' : 'cookies were'} created"
    redirect_to root_path
  end

end
