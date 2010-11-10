class CreateCountryNamers < ActiveRecord::Migration
  def self.up
    create_table :country_namers do |t|
     t.integer  :country_id
     t.integer  :locale_id, :null => :false  
     t.string   :name
     t.string   :fullname

      t.timestamps
    end
  end

  def self.down
    drop_table :country_namers
  end
end
