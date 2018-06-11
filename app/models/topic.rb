class Topic < ApplicationRecord
  validates :description, presence: true
  has_many :favorites

  def self.search(search) #ここでのself.はUser.を意味する
    if search
      where(['title LIKE ? OR description LIKE ?',"%#{search}%", "%#{search}%"]) #検索とnameの部分一致を表示。User.は省略
    else
      all #全て表示。User.は省略
    end
  end
end
