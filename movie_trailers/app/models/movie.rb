class Movie < ActiveRecord::Base
  belongs_to :actor
  has_many :actors
end
