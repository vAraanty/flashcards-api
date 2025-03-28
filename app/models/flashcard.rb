# == Schema Information
#
# Table name: flashcards
#
#  id         :bigint           not null, primary key
#  answer     :text
#  question   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deck_id    :bigint           not null
#
# Indexes
#
#  index_flashcards_on_deck_id  (deck_id)
#
# Foreign Keys
#
#  fk_rails_...  (deck_id => decks.id)
#
class Flashcard < ApplicationRecord
  # == Extensions ===========================================================

  # == Constants ============================================================

  # == Attributes ===========================================================

  # == Relationships ========================================================
  belongs_to :deck

  # == Validations ==========================================================

  # == Scopes ===============================================================

  # == Callbacks ============================================================

  # == Class Methods ========================================================

  # == Instance Methods ====================================================
end
