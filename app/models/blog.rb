class Blog < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :blog_images, BlogImagesUploader

end