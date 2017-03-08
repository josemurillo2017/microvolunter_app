class RootController < ApplicationController
  def roots
    if volunteer_signed_in?
      redirect_to("/dashboard")
    elsif organization_signed_in?
      redirect_to("/org/dashboard")
    else
      redirect_to("volunteers/sign_in")
    end
  end
end
