class Relationship < ActiveRecord::Base
  attr_accessible :follower_id, :source_id
  
  belongs_to :follower
  belongs_to :source
end
