Rails.application.routes.draw do
  # get '/', :controller => 'welcome', :action => 'index'
  # get '/' => 'welcome#index'
  root 'welcome#index'
end
