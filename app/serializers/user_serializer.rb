class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :giphs
  has_many :giphs
end
