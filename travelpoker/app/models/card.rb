class Card < ActiveRecord::Base
  belongs_to :user
  belongs_to :season
  belongs_to :category
  has_many :comments
  has_many :likes, as: :likeable
  has_and_belongs_to_many :decks
  attr_accessible :description, :image, :location, :title, :url
end
