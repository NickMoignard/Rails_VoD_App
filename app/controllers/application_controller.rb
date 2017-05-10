class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource

  protected

  # Return Devise layout or Standard application layout dependendant on current controller
  def layout_by_resource
    if devise_controllerf?
      'devise'
    else
      'application'
    end
  end
end
