class Stat < ActiveRecord::Base
  belongs_to :user
  validates :identifier, :presence => true
  validates :quantity, :presence => true
end
