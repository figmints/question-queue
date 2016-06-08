class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.string :department, null: false
      t.string :description
      t.belongs_to :user
      t.timestamps
    end
  end
end
