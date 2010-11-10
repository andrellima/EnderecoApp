class CreateCitynames < ActiveRecord::Migration
  def self.up
    create_table :citynames, :id => false do |t|
      t.integer  :city_id
      t.integer  :locale_id, :null => true
      t.string   :name
      t.string   :fullname
     

      t.timestamps
    end
  end

  def self.down
    drop_table :citynames
  end
end
