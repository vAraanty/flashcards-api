# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_deck, mutation: Mutations::CreateDeck
    field :create_flashcard, mutation: Mutations::CreateFlashcard
  end
end
