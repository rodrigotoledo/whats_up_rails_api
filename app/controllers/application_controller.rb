class ApplicationController < ActionController::API
  before_action :authenticate

  private

  def authenticate
    Current.user = User.first
  end
end
