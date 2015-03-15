class Post < ActiveRecord::Base
  attr_accessor :tagstring

  belongs_to :enterprise
  belongs_to :organization
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

  after_save :update_tags

  def poster
    return enterprise.name if enterprise
    return organization.name if organization
    'Unknown'
  end

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
