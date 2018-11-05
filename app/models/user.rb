class User < ApplicationRecord
  has_many :jobs
  has_many :bookmarks
  has_many :notes
  has_many :interviews

  has_secure_password
end
