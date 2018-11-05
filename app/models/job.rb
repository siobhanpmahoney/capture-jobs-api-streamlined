class Job < ApplicationRecord
  belongs_to :company
  belongs_to :users, optional: true
  has_many :notes
  has_many :bookmarks
  has_many :interviews
end
