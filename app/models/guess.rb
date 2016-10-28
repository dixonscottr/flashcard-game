class Guess < ActiveRecord::Base
  belongs_to :round
  belongs_to :answer
  has_one :user, through: :round
end
