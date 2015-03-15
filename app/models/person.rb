class Person < ActiveRecord::Base
  attr_accessor :tagstring

  has_many :person_tags, dependent: :destroy
  has_many :tags, through: :person_tags
  has_attached_file :image, styles:{ medium: "300x300>"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

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
