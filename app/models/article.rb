class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  has_many :comments
  belongs_to :user, optional: true

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
