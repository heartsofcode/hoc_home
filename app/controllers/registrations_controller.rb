class RegistrationsController < Devise::RegistrationsController
  before_action :disable_registration, only: [:new, :create]

  protected

  def disable_registration
    redirect_to root_path
  end
end
