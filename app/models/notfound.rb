class Notfound < ActiveRecord::Base
  has_attached_file :site_404,
                storage: :s3,
                styles: { medium: "300x300>", thumb: "100x100>" }
end