class Course < ApplicationRecord

  validates :title, presence: true, length: { minimum: 10 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :author, presence: true, length: { minimum: 5 }
  validates :category, presence: true, length: { minimum: 3 }
  validates :price, presence: true
  validates :language, presence: true, length: { minimum: 3 }

  scope :not_finished, -> { where(end_date: (Time.now)..) }

  def price
    float_to_brl self[:price]
  end

  def price=(value)
    self[:price] = brl_to_float value
  end
end
