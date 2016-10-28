class Deck < ActiveRecord::Base
  has_many :rounds
  has_many :cards
  belongs_to :author, {class_name: User}

  validates_presence_of :name
end
