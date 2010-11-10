class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.integer :country_id
      t.integer :region_id
      t.string :url, :limit => 50,  :default => "",    :null => true
      t.string :name, :limit => 50,  :default => "",    :null => false
      t.float :latitude
      t.float :longitude

    end
  end

  def self.down
    drop_table :cities
  end
end
