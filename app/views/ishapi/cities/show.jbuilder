
#
# ishapi / cities / show
#

key = [ @city, params.permit! ]
json.cache! key do
  json.city do
    json.id          @city.id.to_s
    json.name        @city.name
    json.cityname    @city.cityname
    json.description @city.description
    json.photo       @city.profile_photo.photo.url( :thumb ) if @city.profile_photo
    json.x           @city.x
    json.y           @city.y

    json.partial! 'ishapi/events/index',    :events    => @city.events
    json.partial! 'ishapi/features/index',  :features  => @city.features, :resource => @city
    json.partial! 'ishapi/galleries/index', :galleries => @city.galleries
    json.partial! 'ishapi/newsitems/index', :newsitems => @city.newsitems
    json.partial! 'ishapi/reports/index',   :reports   => @city.reports
    json.partial! 'ishapi/users/index',     :users     => @city.current_users
    json.partial! 'ishapi/venues/index',    :venues    => @city.venues
    json.partial! 'ishapi/videos/index',    :videos    => @city.videos
    json.partial! 'ishapi/tags/index',      :tags      => @city.tags
  end
end
