class Neighborhood < ActiveRecord::Base
  belongs_to :borough
  has_many :lounges
end