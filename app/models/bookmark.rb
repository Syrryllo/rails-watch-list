class Bookmark < ApplicationRecord

  belongs_to :movie
  belongs_to :list 
 
  # The comment of a bookmark cannot be shorter than 6 characters.
  validates :comment, 
                length: { minimum: 6 }, 
                presence: true

  validates :movie, uniqueness: {scope: :list}

end
