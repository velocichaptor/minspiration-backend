class PictureSerializer < ActiveModel::Serializer
  attributes :id, :image, :caption, :post_id
end
