class User < ApplicationRecord
  has_many :favorites
  has_many :giphs, through: :favorites
end
