class Snippet < ApplicationRecord
  validates :title, :language, :contents, presence: true

  validates :contents,
    length: { minimum: 1, maximum: 2000 }
end
