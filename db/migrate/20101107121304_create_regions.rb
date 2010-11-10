class CreateRegions < ActiveRecord::Migration
  def self.up
    create_table :regions do |t|
     t.string  :country_id, :null => true
     t.string  :code 
     t.string  :url
     t.string  :name
     t.decimal  :latitude
     t.decimal  :longitude    
      

      t.timestamps
    end
  end

  def self.down
    drop_table :regions
  end
end  
