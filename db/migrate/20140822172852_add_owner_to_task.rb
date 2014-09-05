class AddOwnerToTask < ActiveRecord::Migration
  def self.up
    add_column :tasks,:owner,:string
  end
  def self.down
    remove_column :tasks,:owner
  end
end
