class User < ApplicationRecord
  belongs_to :star_sign
  has_one_attached :avatar
end
