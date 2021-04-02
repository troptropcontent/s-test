class AddAnecdoteToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :anecdote, :string
  end
end
