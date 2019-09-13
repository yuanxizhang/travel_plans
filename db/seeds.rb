#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DATA = {
	:user_keys =>
    ["email", "password"],
  :users => [
    ["Max"],
    ["Jack"],
    ["Leo"],
    ["Megan"],
    ["Hayden"],
    ["Tenzin"],
    ["Davis"],
    ["Cole"],
    ["Wallis"]
  ],
  :plan_keys =>
    ["place", "budget_limit", "time_limit"],
  :plans => [
    ["Max"],
    ["Jack"],
    ["Leo"],
    ["Megan"],
    ["Hayden"],
    ["Tenzin"],
    ["Davis"],
    ["Cole"],
    ["Wallis"]
  ],
  :offer_keys =>
   ["tour_name", "about", "departs", "length", ""],
  :offers => [
    ["Scrambler Ride", 2, 2, 2, 36],
    ["Miniature Railroad", 0, 1, 2, 32],
    ["Merry-Go-Round", 1, 1, 1, 30],
    ["Roller Coaster", 1, 3, 4, 54],
    ["Swinging Ship", 2, 2, 2, 36],
    ["Go Karts", 1, 2, 3, 36],
    ["Haunted Mansion", 1, 1, 1, 30],
    ["Ferris Wheel", 1, 1, 2, 36],
    ["Teacups Ride", 3, 1, 1, 28]
  ], 
  :offer_keys =>
   ["tour_name", "about", "departs", "length", ""],
  :offers => [
    ["Scrambler Ride", 2, 2, 2, 36],
    ["Miniature Railroad", 0, 1, 2, 32],
    ["Merry-Go-Round", 1, 1, 1, 30],
    ["Roller Coaster", 1, 3, 4, 54],
    ["Swinging Ship", 2, 2, 2, 36],
    ["Go Karts", 1, 2, 3, 36],
    ["Haunted Mansion", 1, 1, 1, 30],
    ["Ferris Wheel", 1, 1, 2, 36],
    ["Teacups Ride", 3, 1, 1, 28]
  ] 
}

def main
  make_providers
  make_offers
  make_plans
end

# def make_users
#   DATA[:users].each do |user|
#     new_user = User.new
#     user.each_with_index do |attribute, i|
#       new_user.send(DATA[:user_keys][i]+"=", attribute)
#     end
#     new_user.save
#   end
# end

# def make_admin
#   DATA[:admins].each do |name|
#     User.create(name: name, admin: true, password: 'password')
#   end
# end

def make_attractions
  DATA[:attractions].each do |attraction|
    new_attraction = Attraction.new
    attraction.each_with_index do |attribute, i|
      new_attraction.send(DATA[:attraction_keys][i] + "=", attribute)
    end
    new_attraction.save
  end
end

def make_rides
  DATA[:rides].each do |ride|
    new_ride = Ride.new
    ride.each_with_index do |attribute, i|
      new_ride.send(DATA[:ride_keys][i]+"=", attribute)
    end
    new_ride.save
  end
end
