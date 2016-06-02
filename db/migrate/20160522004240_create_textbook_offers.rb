class CreateTextbookOffers < ActiveRecord::Migration
  def change
    create_table :textbook_offers do |t|
      t.integer :user_id
      t.integer :textbook_id

      t.timestamps null: false
    end
  end
end
