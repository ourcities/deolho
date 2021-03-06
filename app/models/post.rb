class Post < ActiveRecord::Base
  attr_accessible :body, :title, :image
  default_scope order('created_at DESC')
  mount_uploader :image, ImageUploader
  validates :body, :title, :image, :presence => true
  has_and_belongs_to_many :tags

  include PgSearch
  pg_search_scope :search_by_full_text, :against => [:title, :body], :ignoring => :accents

  def to_param
    "#{self.id}-#{self.title.parameterize}"
  end
end
