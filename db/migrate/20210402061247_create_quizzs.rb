class CreateQuizzs < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzs do |t|
      t.string :categorie
      t.string :difficulty

      t.timestamps
    end
  end
end
