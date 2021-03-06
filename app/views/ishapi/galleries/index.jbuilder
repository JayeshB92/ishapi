
#
# ishapi / galleries / index
#

json.array! @galleries do |gallery|
  json.id          gallery.id.to_s
  json.name        gallery.name
  json.galleryname gallery.galleryname
  json.username    gallery.user_profile.name
  json.cityname    gallery.city.name    if gallery.city
  json.tagname     gallery.tag.name_seo if gallery.tag
  json.venuename   gallery.venue.name   if gallery.venue
  json.partial! 'ishapi/photos/index', :photos => gallery.photos
end

