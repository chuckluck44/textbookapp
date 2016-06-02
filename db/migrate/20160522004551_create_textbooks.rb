class CreateTextbooks < ActiveRecord::Migration
  def change
    create_table :textbooks do |t|
      t.string :title
      t.integer :isbn

      t.timestamps null: false
    end
  end
end
