class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :title, presence: true #presence: true = カラムが「空ではないか」というバリデーション
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
end
