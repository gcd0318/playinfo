class Play < ActiveRecord::Base
  attr_accessible :added_by, :name, :theater_id, :verified_by, :date_time
  
  has_many :play_player_xrefs
  has_many :players, :class_name => "User", :through => :play_player_xrefs
  belongs_to :theater
  
  validates_presence_of :name
  validates_presence_of :theater
  validates_presence_of :date_time
  validates_presence_of :theater_id

end
