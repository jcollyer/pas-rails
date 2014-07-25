class Post < ActiveRecord::Base
  has_many :comments

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
    :default_url => '/images/:attachment/missing_:style.jpg'
end
