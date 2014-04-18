class Post < ActiveRecord::Base

  default_scope -> { order(created_at: :desc) }

  scope :published, -> { where(published: true) }

  validates :title, presence: true, uniqueness: true

  before_save :build_slug

  def build_slug
    self.slug = title.parameterize
  end

  def self.find_by_slug_or_id(param)
     where(["slug = ? OR id = ?", param, param.to_i]).first
  end

end
