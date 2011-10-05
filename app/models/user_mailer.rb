class UserMailer < ActionMailer::Base
  def send_invitation(invi,event,user)
    #setup
    #    setup_email(user)
    @from = "no-reply<event_management@gmail.com>"
    @sent_on     = Time.now

    #test servers 
    @recipients  = user.email
    
    

    @subject    = 'Event Invitation'
    @body[:messg]=event.description
    @body[:invi]=invi
    @body[:event]=event
    @body[:user]=user
    
  end
  
end
