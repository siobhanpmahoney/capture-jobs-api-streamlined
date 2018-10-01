class Company < ApplicationRecord
  has_many :jobs
  has_many :bookmarks
  has_many :notes
end
