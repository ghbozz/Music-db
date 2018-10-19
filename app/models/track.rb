class Track < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  def all_tags=(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name).first_or_create!
    end
  end

  def all_tags
    tags.map(&:name).map { |tag| tag.capitalize }.join(', ')
  end

  # include PgSearch
  # pg_search_scope :search_by_tags,
  #   against: [ :tags, :taggings ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }
end
