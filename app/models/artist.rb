class Artist < ApplicationRecord
  belongs_to :chart
  has_many :songs
  validate: :name, uniqueness: true

end
