class Department < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  DEPARTMENT = [
    "Development",
    "HR / Administration",
    "Design",
    "Marketing",
    "Sales",
    "Account Managers"
  ]
end
