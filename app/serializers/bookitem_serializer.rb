class BookitemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author, :avatar
end
