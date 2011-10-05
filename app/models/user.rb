class User < ActiveRecord::Base
  has_many :events , :through => :invitations
  has_many :invitations

  def self.find_all_users
    find(:all)
  end
end
