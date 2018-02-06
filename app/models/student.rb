class Student < ApplicationRecord
  belongs_to :cohort, optional: true

  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :name, exclusion: {in: ['DROP TABLE']}

  validate :must_be_eighteen

  # 1. student email must be unique

  # 2. student must be eighteen years old
  # (date put into form - 18.years > Date.Today)

  # 3. students names cannot be 'DROP TABLE'

  def must_be_eighteen
    if dob && dob.to_date >= 18.years.ago
      self.errors.add(:dob, 'Student must be atleast 18 years old')
    end
  end

  # def not_silly_name
  #   if name == 'DROP TABLE'
  #     errors.add(:name, 'Name cannot be DROP TABLE')
  #   end
  # end

end
