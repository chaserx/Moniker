class CreateMonikers < ActiveRecord::Migration
  def self.up
    create_table :monikers do |t|
      t.string :name
      t.integer :rank
      t.string :gender
      t.boolean :topten
      t.timestamps
    end
  end
  
  def self.down
    drop_table :monikers
  end
end
