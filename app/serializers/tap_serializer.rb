class TapSerializer < ActiveModel::Serializer
  attributes :id, :email, :word, :success, :time, :level
end
