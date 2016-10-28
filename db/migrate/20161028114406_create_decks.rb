class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name, null: false
      t.integer :author_id

      t.timestamps(null: false)
    end
  end
end
