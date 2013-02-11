class User < ActiveRecord::Base
  scope :limited, :limit => 50
  scope :ordered, :order => 'created_at asc'
  attr_accessible :name, :ua, :created_at

  # -------------------------------------
  # for redis
  include Redis::Objects
  list :folowers, {:maxlength => 1000}
  list :folows, {:maxlength => 1000}
  list :tweets, {:maxlength => 10}
  hash_key :options
end
