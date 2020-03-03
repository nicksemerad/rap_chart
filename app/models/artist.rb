class Artist < ApplicationRecord
  belongs_to :Chart
  has_many :Songs
end
