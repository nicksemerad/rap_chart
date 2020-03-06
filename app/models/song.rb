class Song < ApplicationRecord
  belongs_to :artist
  validate: :name, uniqueness: true

end
