 class Country < ActiveRecord::Base
set_primary_key => :code
  validates_presence_of :name
  validates_presence_of :code

  has_many :regions
  has_many :citys
end
