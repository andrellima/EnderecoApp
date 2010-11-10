class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries, :id => false do |t|
    t.string    :code  ,:limit => 20
    t.string    :code3 ,:limit => 30, :null=> true 
    t.integer   :numcode , :null => true
    t.string    :url 
    t.string    :name
    t.integer   :latitude
    t.integer   :longitude
    t.timestamp
    execute "alter table countries modify column code varchar unsigned primary key"
  
  end
add_index(:countries, :name)

  def self.down
  end
end
