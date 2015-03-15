class Organization < ActiveRecord::Base
  attr_accessor :tagstring

  has_many :organization_tags, dependent: :destroy
  has_many :tags, through: :organization_tags
  has_many :posts, dependent: :destroy

  after_save :update_tags

  protected

  def update_tags
    return unless @tagstring
    new_tags = []
    @tagstring.squish.split(', ').each do |t|
      new_tags << Tag.get(t.strip)
    end
    self.tags = new_tags
  end
end
