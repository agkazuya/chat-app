class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users
  has_many :messages, dependent: :destroy

  validates :name, presence: true
# 上記のバリデーションは「ルーム名が存在（presence）している場合のみ作成可（true）」という意味です。
end
