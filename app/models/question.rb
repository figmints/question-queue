class Question < ActiveRecord::Base

  include PgSearch
  pg_search_scope :search, :against => [:title, :description]

  belongs_to :user
  belongs_to :department
  has_many :answers

  validates :title, presence: true
  validates :department_id, presence: true

end
