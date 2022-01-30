class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites,dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_one_attached :image
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  def increase_favorite(user)
    favorites.create(user_id: user.id)
  end

  def decrease_favorite(user)
    favorites.find_by(user_id: user.id).destroy
  end

  # 現在のユーザーがいいねしてたらtrueを返す
  def favorite?(user)
    favorite_users.include?(user)
  end

end
