class AddInvitations < ActiveRecord::Migration
  def self.up
    Event.all.each do |event|
        Invitation.create(:event_id=>event.id,:user_email=>"rizwan786_2001@yahoo.com",:status=>1,:code=>"200",:user_id=>2)
    end
  end

  def self.down
  end
end
