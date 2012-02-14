class CreateCannons < ActiveRecord::Migration
  def self.up
    create_table :cannons do |t|
      t.integer :balls
      t.integer :kegs_of_powder
      t.integer :fuse_quantity
      t.integer :id_number
      t.integer :gallion_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cannons
  end
end
