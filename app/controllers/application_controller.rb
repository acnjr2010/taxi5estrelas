class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

   def after_update_path_for(current_user)
     byebug
     admin_path
   end
end
