class CreateGallions < ActiveRecord::Migration
  def self.up
    create_table :gallions do |t|
      t.date :year
      t.integer :model_number
      t.string :ship_name

      t.timestamps
    end
  end

  def self.down
    drop_table :gallions
  end
end
