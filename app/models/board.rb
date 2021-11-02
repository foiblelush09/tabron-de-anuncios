class Board < ApplicationRecord
  validates :game_title, presence: true
  validates :text,       presence: true

  belongs_to :user
end
