class ChangeQuestionsDepartmentToInt < ActiveRecord::Migration
  def change
      remove_column :questions, :department
      add_column :questions, :department_id, :integer
  end
end
