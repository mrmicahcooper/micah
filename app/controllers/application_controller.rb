class ApplicationController < ActionController::Base

  authem_for :admin

  protect_from_forgery

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

end
