class Tag < ActiveRecord::Base
  has_many :post_tags, dependent: :destroy
  has_many :posts, through: :link_tags

  def self.get(name)
    tag = Tag.where('lower(name) = ?', name.downcase)
    tag = Tag.create name: name if tag.empty?
    tag
  end
end
