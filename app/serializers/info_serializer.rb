class InfoSerializer < ActiveModel::Serializer
  attributes :id, :email, :gender, :age, :experience, :enjoy, :language
end
