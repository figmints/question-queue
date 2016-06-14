class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :questions
  has_many :answers
  belongs_to :department

  validates :email, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,

    :recoverable,
    :rememberable,
    :trackable,
    :validatable
end
