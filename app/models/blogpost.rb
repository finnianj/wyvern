class Blogpost < ApplicationRecord
  has_rich_text :content
  has_many_attached :photos
end
