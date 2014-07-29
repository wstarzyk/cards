class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name
      t.string :subject
      t.string :course
      t.string :teacher
      t.string :student

      t.timestamps
    end
  end
end
