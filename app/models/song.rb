class Song < ApplicationRecord
    # 他のモデルとの関係性
    has_many :categories

    # バリデーション
    validate 
end
