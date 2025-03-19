class CreateFlashcards < ActiveRecord::Migration[8.0]
  def change
    create_table :flashcards do |t|
      t.text :question
      t.text :answer
      t.references :deck, null: false, foreign_key: true

      t.timestamps
    end
  end
end
