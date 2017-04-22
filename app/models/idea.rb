class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :idea_like1, through: :likes, source: :user

  validates :content, presence: true
  validates :content, length: {minimum: 10}
end
