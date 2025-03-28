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
require "test_helper"

class FlashcardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
