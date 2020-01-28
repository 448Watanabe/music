class Song < ApplicationRecord
    # 他のモデルとの関係性
    has_many :category
    has_one :audio

    # バリデーション
    validate :name
end
