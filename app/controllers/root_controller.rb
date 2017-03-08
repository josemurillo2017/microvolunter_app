class RootController < ApplicationController
  def roots

    if current_volunteer.present?
      redirect_to("/dashboard")
    elsif current_organization.present?
      redirect_to("/org/dashboard")
    else
      redirect_to("/volunteers/sign_in")
    end

  end
end
