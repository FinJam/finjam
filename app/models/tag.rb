class Tag < ActiveRecord::Base
  has_many :post_tags, dependent: :destroy
  has_many :posts, through: :post_tags

  has_many :person_tags, dependent: :destroy
  has_many :people, through: :person_tags

  has_many :organization_tags, dependent: :destroy
  has_many :organizations, through: :organization_tags

  def self.get(name)
    tag = Tag.where('lower(name) = ?', name.downcase)
    tag = Tag.create name: name if tag.empty?
    tag
  end
end
