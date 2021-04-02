class AddNameToQuizz < ActiveRecord::Migration[6.1]
  def change
    add_column :quizzs, :name, :string
  end
end
