
# require File.expand_path('../../config/boot',  __FILE__)

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
	 protect_from_forgery with: :exception
   include SessionsHelper
   #config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
end
