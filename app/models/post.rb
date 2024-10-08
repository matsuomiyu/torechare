class Post < ApplicationRecord

  has_one_attached :image
  belongs_to :user

  validates :image,     presence: true
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }

 def get_image
   if image.attached?
    image
   else
     file_path = Rails.root.join('app/assets/images/no_image.jpg')
     image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
     image
   end
 end
end
