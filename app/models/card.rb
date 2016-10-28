class Card < ActiveRecord::Base
  belongs_to :deck
  belongs_to :answer

  validates_presence_of :question
end
