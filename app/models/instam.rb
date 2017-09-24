class Instam < ActiveRecord::Base
 validates :content, presence: true
 belongs_to :user
 mount_uploader :content, PictureUploader
end
