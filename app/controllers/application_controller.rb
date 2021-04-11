class ApplicationController < ActionController::Base
	# before_action :authenticate_user!
  # add_flash_types :success, :relance_loyer

  def after_sign_in_path_for(resource)
    if current_user
      biens_path
    else
      super(resource)
    end
  end
end
