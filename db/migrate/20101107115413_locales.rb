class Locales < ActiveRecord::Migration
  def self.up
    create_table :locales, :id => false do |t|
    t.string   :locale 
    t.string   :name     
    t.string   :fullname
    t.timestamp 
      execute "alter table countries modify column locale varchar unsigned primary key" 
   end
   
  add_index(:locales, :locale)
  end

  def self.down
  end
end
