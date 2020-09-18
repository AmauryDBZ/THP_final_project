class AdminController < ApplicationController
  include AdminHelper

  before_action :check_if_admin

  def index
  end
end
