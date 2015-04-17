class Actor < ActiveRecord::Base
  belongs_to :movie
  has_many :movies
end
