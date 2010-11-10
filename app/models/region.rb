class Region < ActiveRecord::Base
  validates_presence_of :name

  belongs_to :country
  has_many :regionnames
end
