class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.references :round
      t.references :answer

      t.timestamps(null: false)
    end
  end
end
