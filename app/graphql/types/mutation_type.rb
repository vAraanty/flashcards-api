# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    field :create_deck, mutation: Mutations::CreateDeck
    field :create_flashcard, mutation: Mutations::CreateFlashcard
  end
end
