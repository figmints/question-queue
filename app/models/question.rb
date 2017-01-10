class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :department
  has_many :answers

  include PgSearch
  pg_search_scope :search, :against => [:title, :description],
                  :using => {
                    :tsearch => {:dictionary => "english"}
                  },
                  associated_against: {department: :name}

  def self.text_search(query)
    if query.present?
      search(query)
    else
      all
    end
  end

  validates :title, presence: true
  validates :department_id, presence: true

end
