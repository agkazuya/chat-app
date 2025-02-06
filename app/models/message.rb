class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached?
# 上記で画像が存在しなければテキストが必要となり、画像があればテキストは不要という記載になった

  def was_attached?
    self.image.attached?
  end
end
