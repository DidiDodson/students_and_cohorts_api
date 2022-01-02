class Cohort < ApplicationRecord
    has_many :students

    validates :name, uniqueness: true, presence: true
    validates_presence_of :start_date, :graduation_date

  def status
    if Time.now <= self.start_date
      "future"
    elsif self.start_date <= Time.now && Time.now <= self.graduation_date
      "current"
    else
      "graduated"
    end
  end
end
