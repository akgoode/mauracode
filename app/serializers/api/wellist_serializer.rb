module Api
  class WellistSerializer < ActiveModel::Serializer
    attributes :id, :vendors, :user

    def vendors
      object.vendors.pluck(:name)
    end
  end
end
