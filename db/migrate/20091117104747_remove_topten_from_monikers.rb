class RemoveToptenFromMonikers < ActiveRecord::Migration
  def self.up
    remove_column :monikers, :topten
  end

  def self.down
    add_column :monikers, :topten, :boolean
  end
end
