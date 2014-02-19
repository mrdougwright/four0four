class Notfound < ActiveRecord::Base
  has_attached_file :site_404, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  before_save :upload_image

  def upload_image
    model = self
    html = "http://#{site_url}/foodougbar"
    kit = IMGKit.new(html)
    img = kit.to_img(:png)
    file = Tempfile.new(["template_#{model.id}", "png"], "tmp", encoding: 'ascii-8bit')

    file.write(img)
    file.flush
    model.site_404 = file
    model.save
    file.unlink
  end
end
