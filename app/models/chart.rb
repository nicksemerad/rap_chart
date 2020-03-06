class Chart < ApplicationRecord
  has_many :artists
  validate: :name, uniqueness: true
end
