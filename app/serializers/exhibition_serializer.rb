class ExhibitionSerializer < ActiveModel::Serializer
  attributes :id, :name, :venue_name, :venue_address, :venue_phone, :venue_access, :venue_area, :venue_openinghour, :venue_closinghour, :image, :price, :permanent_event, :description, :media, :start_date, :end_date, :days_remaining

end
