class AddDefaultValueToVerifiedAnswerColumn < ActiveRecord::Migration
  def change
      change_column :questions, :verified_answer, :boolean, default: false
  end
end
