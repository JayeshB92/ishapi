
json.array! @cities do |city|
  json.id       city.id.to_s
  json.name     city.name
  json.cityname city.cityname
  json.x        city.x
  json.y        city.y
  if city.profile_photo
    json.photo city.profile_photo.photo.url( :thumb )
  end
end
