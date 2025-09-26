class Post < ApplicationRecord
  validates :notes, presence: true
end
