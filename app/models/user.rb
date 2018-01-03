class User < ApplicationRecord
  has_secure_password
  validates :type, inclusion: { in: %w(Client Employee Admin), message: "%{value} is not a valid type" }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true, format: {
    with: /\A[a-zA-Z0-9_]+\z/, message: "only allows letters, numbers and underscore characters."
  }
  validates :email, uniqueness: true
  validates :password, :length => { :minimum => 8 }
end
