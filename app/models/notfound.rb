require 'rubygems'
require 'selenium-webdriver'

class Notfound < ActiveRecord::Base
  has_attached_file :site_404, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  before_save :grab_screenshot

  def grab_screenshot

  end
end
