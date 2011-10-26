class Invitation < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  require 'digest/sha1'
  
  after_create :send_invitation
  
  def self.add_invitee(params)
    create :event_id=>params[:event_id],:user_id=>params[:invitation][:user_id],:status=>0,:code=>Invitation.random_alphanumeric(6)
  end
  def self.random_alphanumeric(size=6)
    (1..size).collect { (i = Kernel.rand(62); i += ((i < 10) ? 48 : ((i < 36) ? 55 : 61 ))).chr }.join
  end
  def invitee_accepted
  
  end
  def send_invitation
    url = generate_activation_url
    event = Event.find(self.event_id)
    user = User.find(self.user_id)
    send_email(event,user,url)
  end

  def generate_activation_url
    "#{SERVER_URL}/invitation_accepted/?id=?#{self.id}&code#{self.code}"
  end
  def send_email(event,user,url)
    UserMailer.deliver_send_invitation(self,event,user,url)
  end
end


