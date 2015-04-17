class Movie < ActiveRecord::Base
  belongs_to :actor
  has_many :actors
  validates :title, presence: true
  validates :year, presence: true

  def save_details(query)
  	self.title = query["Title"]
  	self.year = query["Year"]
  	self.poster_url = query["Poster"]
  	self.plot = query["Plot"]
  end


#   Title: <%= @query["Title"] %>
# Year: <%= @query["Year"] %>
# <img src = "<%= @query["Poster"] %>" />
# Plot: <%= @query["Plot"] %>
end
