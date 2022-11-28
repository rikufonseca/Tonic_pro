class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :success
  before_action :authenticate_user!
  before_action :set_time_zone, if: :user_signed_in?

  private

  def set_time_zone
    Time.zone = current_user.time_zone
  end
end
