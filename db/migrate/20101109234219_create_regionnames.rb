class CreateRegionnames < ActiveRecord::Migration
  def self.up
    create_table :regionnames do |t|
      t.integer   :region_id
      t.integer   :locale_id
      t.string    :name
      t.string    :fullname

      t.timestamps
    end
  end

  def self.down
    drop_table :regionnames
  end
end
