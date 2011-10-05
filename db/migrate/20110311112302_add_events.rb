class AddEvents < ActiveRecord::Migration
  def self.up
    [{:name=>"Birthday" ,:description=>"its a birthday event", :location=>"Pakistan",:user_id=>1,:date=>"2011-05-05"},{:name=>"Ceremony" ,:description=>"its a event", :location=>"Lahore",:user_id=>1,:date=>"2011-05-05"},{:name=>"Function" , :location=>"Dubai",:description=>"its an event",:user_id=>1,:date=>"2011-05-05"}].each{|event_params|
      Event.create event_params
    }
  end

  def self.down
  end
end
