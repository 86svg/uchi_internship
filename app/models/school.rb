class School < ApplicationRecord
  has_many :class_books, dependent: :destroy
end
