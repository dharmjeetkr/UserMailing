class Product < ActiveRecord::Base
has_many  :attachs


validates :name, :description, :price, presence: true

 validates :name, uniqueness: true
 validates :price, numericality: {equal_to_or_greater: 20}
 
 has_attached_file :pic, :styles =>  { :medium => "300x300>", :thumb => "100x100>" }
 validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
 #validates_attachment_content_type :pic, :content_type => { :content_type => "pic/jpg"} 


 has_attached_file :attach
 validates_attachment_content_type :attach, :content_type  => ["application/vnd.openxmlformats- officedocument.spreadsheetml.sheet",'application/pdf','application/msword','application/zip', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',  /\Aimage\/.*\Z/ ],
message: "only pdf,doc,zip,msword with any image type allowed"

 #this validator allow to upload any image type+doc file,pdf,zip, file and word document, for this supprot you also need to add in config/mime_type.rb file.


 #validates_attachment_content_type :attach, :content_type => {:content_type => %w(application/pdf application/msword application/#vnd.openxmlformats-officedocument.wordprocessingml.attach)}


 

end
