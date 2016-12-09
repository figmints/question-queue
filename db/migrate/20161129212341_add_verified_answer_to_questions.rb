class AddVerifiedAnswerToQuestions < ActiveRecord::Migration
  def change
      add_column :questions, :verified_answer, :boolean
  end
end
