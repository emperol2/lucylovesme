class Blog < ActiveRecord::Base

  mount_uploader :blog_images, BlogImagesUploader

end