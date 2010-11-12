class Locale < ActiveRecord::Base
set_primary_key "locale"
validates_presence_of :name
end


