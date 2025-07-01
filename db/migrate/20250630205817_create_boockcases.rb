class CreateBoockcases < ActiveRecord::Migration[8.0]
  def change
    create_table :boockcases do |t|
      t.integer :limit

      t.timestamps
    end
  end
end
