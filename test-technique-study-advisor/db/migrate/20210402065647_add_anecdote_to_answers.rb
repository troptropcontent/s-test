class AddAnecdoteToAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :answers, :anecdote, :string
  end
end
