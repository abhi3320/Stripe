class ApplicationController < ActionController::Base

  require "stripe"
	protect_from_forgery with: :null_session
  
end
