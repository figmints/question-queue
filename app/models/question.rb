class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :department
  has_many :answers

  validates :title, presence: true
  validates :department_id, presence: true

end
