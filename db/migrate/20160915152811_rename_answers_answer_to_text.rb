class RenameAnswersAnswerToText < ActiveRecord::Migration
  def change
      rename_column(:answers, :answer, :text)
  end
end
