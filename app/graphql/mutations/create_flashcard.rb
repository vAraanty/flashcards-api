module Mutations
  class CreateFlashcard < BaseMutation
    argument :deck_id, ID, required: true
    argument :question, String, required: true
    argument :answer, String, required: true

    field :flashcard, Types::FlashcardType, null: true
    field :errors, [ String ], null: false

    def resolve(deck_id:, question:, answer:)
      flashcard = Flashcard.new(
        deck_id: deck_id,
        question: question,
        answer: answer
      )

      if flashcard.save
        {
          flashcard: flashcard,
          errors: []
        }
      else
        {
          flashcard: nil,
          errors: flashcard.errors.full_messages
        }
      end
    end
  end
end
