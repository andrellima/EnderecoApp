class Regionname < ActiveRecord::Base
  belongs_to :region
  belongs_to :locale
end
