class ApplicationController < ActionController::Base
  after_action :track_action

  include Pundit
  protect_from_forgery
  
  protected

  def track_action
    ahoy.track "Ran action", request.path_parameters
  end
end
