class Deck < ApplicationRecord
  has_many :flashcards, dependent: :destroy
end
