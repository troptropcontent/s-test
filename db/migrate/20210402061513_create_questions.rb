class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :text
      t.references :quizz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
