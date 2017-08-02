class Department < ActiveRecord::Base
  has_many :questions
  has_one :user
end
