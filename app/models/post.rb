class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy
  belongs_to :user
end
