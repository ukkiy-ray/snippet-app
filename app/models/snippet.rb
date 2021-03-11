class Snippet < ApplicationRecord
  validates :title, :language, :contents, presence: true
end
