class AddUsers < ActiveRecord::Migration
  def self.up
    [{:name=>"Rizwan" , :email=>"muhammad.rizwan092.com"}].each{|user_params|
      User.create user_params
    }
  end

  def self.down
  end
end
