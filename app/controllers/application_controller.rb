class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #  before_filter :set_timezone

  #  private

    #def set_timezone
    #  tz = current_preferences ? current_preferences.timezone : nil
    #  Time.zone = tz || ActiveSupport::TimeZone["London"]
    end

