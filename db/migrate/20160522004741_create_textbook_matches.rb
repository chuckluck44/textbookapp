class CreateTextbookMatches < ActiveRecord::Migration
  def change
    create_table :textbook_matches do |t|
      t.integer :from_user_id
      t.integer :to_user_id
      t.integer :textbook_id

      t.timestamps null: false
    end
  end
end
