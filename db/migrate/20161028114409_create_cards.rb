class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question, null: false
      t.references :deck
      t.references :answer

      t.timestamps(null: false)
    end
  end
end
