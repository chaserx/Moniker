class AddVersionToMonikers < ActiveRecord::Migration
  def self.up
    add_column :monikers, :version, :string
  end

  def self.down
    remove_column :monikers, :version
  end
end
