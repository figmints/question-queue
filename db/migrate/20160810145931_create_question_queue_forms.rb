class CreateQuestionQueueForms < ActiveRecord::Migration
  def change
    create_table :question_queue_forms do |t|
      t.string :title
      t.text :description
      t.string :department

      t.timestamps null: false
    end
  end
end
