class CreateAttempts < ActiveRecord::Migration[6.1]
  def change
    create_table :attempts do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
