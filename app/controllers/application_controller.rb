class ApplicationController < ActionController::Base
  around_action :set_locale_from_url
end
