class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.integer :challenge_count
      t.string :creator

      t.timestamps
    end
  end
end
