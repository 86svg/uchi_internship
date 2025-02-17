class Student < ApplicationRecord
  belongs_to :class_book

  validates :first_name, :last_name, :surname, presence: true

  TOKEN_SALT = 'Salt'.freeze

  def generate_token
    self.token = Digest::SHA256.hexdigest("#{TOKEN_SALT}#{id}")
    update(token: token)
  end
end
