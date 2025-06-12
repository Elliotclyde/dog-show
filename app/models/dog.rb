class Dog < ApplicationRecord
  validates :name, presence: true, length: {minimum: 2, maximum: 100}
  validates :description, presence: true, length: {minimum: 2, maximum: 1000}
  validates :dog_breed_id, presence: true
  belongs_to :dog_breed
end
