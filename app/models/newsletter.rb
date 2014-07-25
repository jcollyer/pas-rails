class Newsletter < ActiveRecord::Base
  has_attached_file :image,
    :styles => { :large => "400x400>", :medium => "240x240>", :thumb => "100x100>" },
    :storage => :s3,
    :s3_credentials => {
         :access_key_id => ENV['S3_KEY'],
         :secret_access_key => ENV['S3_SECRET'],
         :bucket => "pas_database"
    },
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :default_url => 'http://s3.amazonaws.com/pas_database/images/7/thumb/missing_medium.jpg'
end
