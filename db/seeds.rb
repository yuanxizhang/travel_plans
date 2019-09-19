#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DATA = {
	:traveler_keys =>
    ["name", "passion"],
  :travelers => [
    ["Max", "Hiking"],
    ["Jack", "Rock Climbing"],
    ["Leo", "Painting"],
    ["David", "Diving"],
    ["Frank", "Cooking"],
    ["George", "Sailing"]
  ],
  :plan_keys =>
    ["place", "adventure", "traveler_id"],
  :plans => [
    ["Alaska", "Sailing into the Inside Passage of Alaska on a cruiseship.", 6],
    ["Ireland", ],
    ["Japan"],
    ["Hawaii"],
    ["Hayden"],
    ["Tenzin"],
    ["Davis"],
    ["Cole"],
    ["Wallis"]
  ],
  :offer_keys =>
   ["tour_name", "about", "departs", "length", "price", "provider_id"],
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
  :provider_keys =>
   ["name", "website"],
  :providers => [
    ["", ""],
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
  make_travelers
end

def make_travelers
  DATA[:travelers].each do |traveler|
    new_traveler = Traveler.new
    traveler.each_with_index do |attribute, i|
      new_traveler.send(DATA[:traveler_keys][i]+"=", attribute)
    end
    new_user.save
  end
end


def make_plans
  DATA[:plans].each do |plan|
    new_plan = Plan.new
    plan.each_with_index do |attribute, i|
      new_plan.send(DATA[:plan_keys][i] + "=", attribute)
    end
    new_plan.save
  end
end

def make_providors
  DATA[:providors].each do |providor|
    new_providor = Provider.new
    providor.each_with_index do |attribute, i|
      new_providor.send(DATA[:providor_keys][i]+"=", attribute)
    end
    new_providor.save
  end
end

def make_offers
  DATA[:offers].each do |offer|
    new_offer = Offer.new
    offer.each_with_index do |attribute, i|
      new_offer.send(DATA[:offer_keys][i]+"=", attribute)
    end
    new_offer.save
  end
end
