class Actor < ActiveRecord::Base
  belongs_to :movie
  has_many :movies

  validates :name, presence true
end
