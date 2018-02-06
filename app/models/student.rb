class Student < ApplicationRecord
  validates :name, :email, presence: true

  validate :my_custom_method
  # 1. student email must be unique

  # 2. student must be eighteen years old
  # (date put into form - 18.years > Date.Today)

  # 3. students names cannot be 'DROP TABLE'

  def my_custom_method
    # if _____
    #   #self.errors.add(:property, 'Error Msg')
    # end
  end
end
