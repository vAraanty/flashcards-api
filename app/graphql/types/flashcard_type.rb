module Types
  class FlashcardType < Types::BaseObject
    field :id, ID, null: false
    field :question, String, null: false
    field :answer, String, null: false
    field :deck_id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :deck, Types::DeckType, null: false
  end
end
