class InvitationsController < ApplicationController

  def create
    Invitation.add_invitee(params)
    redirect_to events_path
  end
  def accept
    Invitation.initee_accepted
    redirect_to events_path
  end
end
