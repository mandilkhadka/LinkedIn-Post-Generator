class Post < ApplicationRecord
  validates :notes, presence: true
  
  TONES = %w[professional friendly witty inspirational]
  LENGTHS = %w[short medium long]
end
