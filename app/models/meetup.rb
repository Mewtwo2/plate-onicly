class Meetup < ApplicationRecord
  belongs_to :user
  has_many :users through:
end
