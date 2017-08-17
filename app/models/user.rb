class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts, dependent: :destroy
  has_many :freeposts, dependent: :destroy
  has_many :likes
  has_many :liked_freeposts, through: :likes, source: :freepost
  has_many :free_comments
  def is_like?(post)
    Like.find_by(user_id: self.id, freepost_id: post.id).present?
  end
end
