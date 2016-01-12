class LiveAboard < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
