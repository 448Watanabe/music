class Audio < ApplicationRecord
    # belongs_to :song
    mount_uploader :file, AudioFileUploader

    # validates :title, presence: true
    validates :file, 
        presence: true
        # uniqueness: true # なぜかこれを追加するとエラーになる cant cast AudioFileUpploaderという
    end
