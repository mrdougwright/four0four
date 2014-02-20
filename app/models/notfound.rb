class Notfound < ActiveRecord::Base
  has_attached_file :site_404, :storage => :s3, styles: { medium: "300x300>", thumb: "100x100>" }
end


  # has_attached_file :site_404,
  #   styles: { medium: "300x300>", thumb: "100x100>" },
  #   path: ":rails_root/public/system/notfounds/:id/:style/:filename",
  #   url: "/system/notfounds/:id/:style/:filename"

  # before_save :upload_image

  # def upload_image
  #   html = "http://#{site_url}/foodougbar"
  #   kit = IMGKit.new(html)
  #   kit.to_file(Rails.root + '/tmp/image.png')
  # end
