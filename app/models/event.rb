class Event < ActiveRecord::Base

  has_many :users , :through => :invitations
  has_many :invitations ,:conditions=>["status='1'"]


  def invitees
    self.users.count+1
  end
  def self.find_events
    find(:all,:joins=>"as e left join invitations as i on e.id=i.event_id",:select=>"e.* , GROUP_CONCAT( DISTINCT i.user_id) as invited_ids", :group=>"e.id")
  end
end
