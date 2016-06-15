class Department < ActiveRecord::Base
  belongs_to :question
  has_many :users

  DEPARTMENT = [
    "Development",
    "HR / Administration",
    "Design",
    "Marketing",
    "Sales",
    "Account Managers"
  ]
end
