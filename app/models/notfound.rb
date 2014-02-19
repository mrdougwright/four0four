class Notfound < ActiveRecord::Base
  has_attached_file :site_404, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  before_save :grab_screenshot

  def grab_screenshot
    puts site_url
    kit = IMGKit.new("http://#{site_url}/foodougbar")
    img = kit.to_img(:png)
    kit.to_file(Rails.root + "tmp/temp_screengrabs/testimage.png")
  end
end
