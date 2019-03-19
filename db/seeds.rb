# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'json'

User.destroy_all
Exhibition.destroy_all

User.create(
  full_name: "Jonathan Choi",
  email: "jisung594@gmail.com",
  home_neighborhood: "Queens",
  password_digest: "$2a$10$WOMTVtXFt/b1D5wq82raiODjMNOnPbROTxWeuqdPzuO.f2PRbRhyO"
)


# for exhibitions in QUEENS
raw_data1 = RestClient.get('http://www.nyartbeat.com/list/event_area_queens.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data1)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end


# for exhibitions in HARLEM & BRONX
raw_data2 = RestClient.get('http://www.nyartbeat.com/list/event_area_harlem_bronx.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data2)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end


# for exhibitions in WILLIAMSBURG
raw_data3 = RestClient.get('http://www.nyartbeat.com/list/event_area_williamsburg.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data3)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end


# for exhibitions in DUMBO
raw_data4 = RestClient.get('http://www.nyartbeat.com/list/event_area_dumbo_brooklyn.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data4)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end


# for exhibitions in UPPER EAST SIDE
raw_data5 = RestClient.get('http://www.nyartbeat.com/list/event_area_upper_east_side.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data5)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end


# for exhibitions in MIDTOWN
raw_data6 = RestClient.get('http://www.nyartbeat.com/list/event_area_midtown.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data6)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end


# for exhibitions in FLATIRON & GRAMERCY
raw_data7 = RestClient.get('http://www.nyartbeat.com/list/event_area_flatiron_gramercy.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data7)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end


# for exhibitions in EAST CHELSEA
raw_data8 = RestClient.get('http://www.nyartbeat.com/list/event_area_chelsea_east.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data8)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end


# for exhibitions in CHELSEA 28 and ABOVE
raw_data9 = RestClient.get('http://www.nyartbeat.com/list/event_area_chelsea_28_above.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data9)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end


# for exhibitions in CHELSEA 27
raw_data10 = RestClient.get('http://www.nyartbeat.com/list/event_area_chelsea_27.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data10)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end


# for exhibitions in CHELSEA 26
raw_data11 = RestClient.get('http://www.nyartbeat.com/list/event_area_chelsea_26.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data11)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end


# for exhibitions in CHELSEA 25
raw_data12 = RestClient.get('http://www.nyartbeat.com/list/event_area_chelsea_25.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data12)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end

# ---------------

# for exhibitions in CHELSEA 24
raw_data13 = RestClient.get('http://www.nyartbeat.com/list/event_area_chelsea_24.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data13)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end

# for exhibitions in CHELSEA 23
raw_data14 = RestClient.get('http://www.nyartbeat.com/list/event_area_chelsea_23.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data14)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end

# for exhibitions in CHELSEA 22
raw_data15 = RestClient.get('http://www.nyartbeat.com/list/event_area_chelsea_22.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data15)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end

# for exhibitions in CHELSEA 21
raw_data16 = RestClient.get('http://www.nyartbeat.com/list/event_area_chelsea_21.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data16)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end

# for exhibitions in CHELSEA 20
raw_data17 = RestClient.get('http://www.nyartbeat.com/list/event_area_chelsea_20.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data17)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end

# for exhibitions in CHELSEA 19 and BELOW
raw_data18 = RestClient.get('http://www.nyartbeat.com/list/event_area_chelsea_19_below.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data18)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end

# for exhibitions in the VILLAGES
raw_data19 = RestClient.get('http://www.nyartbeat.com/list/event_area_villages.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data19)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end

# for exhibitions in SOHO
raw_data20 = RestClient.get('http://www.nyartbeat.com/list/event_area_soho.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data20)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end

# for exhibitions in the LOWER EAST SIDE
raw_data21 = RestClient.get('http://www.nyartbeat.com/list/event_area_lower_east_side.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data21)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end

# for exhibitions in LOWER MANHATTAN
raw_data22 = RestClient.get('http://www.nyartbeat.com/list/event_area_lower_manhattan.en.xml?MaxResults="50"')
parsed_data = Hash.from_xml(raw_data22)

parsed_data["Events"]["Event"].each do |exhibition|
  Exhibition.create(
    name: exhibition["Name"],
    venue_name: exhibition["Venue"]["Name"],
    venue_address: exhibition["Venue"]["Address"],
    venue_phone: exhibition["Venue"]["Phone"],
    venue_access: exhibition["Venue"]["Access"],
    venue_area: exhibition["Venue"]["Area"],
    venue_openinghour: exhibition["Venue"]["OpeningHour"],
    venue_closinghour: exhibition["Venue"]["ClosingHour"],
    image: exhibition["Image"],
    price: exhibition["Price"],
    permanent_event: exhibition["PermanentEvent"],
    description: exhibition["Description"],
    media: exhibition["Media"],
    start_date: exhibition["DateStart"],
    end_date: exhibition["DateEnd"],
    days_remaining: exhibition["DaysBeforeEnd"]
  )
end
