module Mutations
  class CreateDeck < BaseMutation
    argument :name, String, required: true

    field :deck, Types::DeckType, null: true
    field :errors, [ String ], null: false

    def resolve(name:)
      deck = Deck.new(name: name)

      if deck.save
        {
          deck: deck,
          errors: []
        }
      else
        {
          deck: nil,
          errors: deck.errors.full_messages
        }
      end
    end
  end
end
