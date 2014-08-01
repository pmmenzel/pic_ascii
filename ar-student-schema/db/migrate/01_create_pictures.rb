require_relative '../config'

class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
