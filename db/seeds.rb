traveler_list = [
    ["Max", "Hiking"],
    ["Jack", "Rock Climbing"],
    ["Leo", "Painting"],
    ["David", "Diving"],
    ["Frank", "Cooking"],
    ["George", "Sailing"]
]

traveler_list.each do |name, passion|
  Traveler.create( name: name, passion: passion )
end

plan_list = [
    ["Alaska", "Sail through the Inside Passage of Alaska on a cruiseship.", 18],
    ["Iceland", "Visit the Golden Circle, the Blue Lagoon", 13],
    ["Japan", "Visit imperial palaces in Kyoto, sample sake, take sushi-making lessons.", 13],
    ["Hawaii", "Visit Waikiki beach in Oahu", 17],
    ["Costa Rica", "Visit Monteverde Cloud Forest, Tortuguero National Park, and Arenal Volcano", 14],
    ["Northern Italy", "Visit Venice, Verona, Cortina, and Lake Garda", 17],
    ["The Danube", "Sail though three countries in Danube river cruise, vist Budapest, Vienna, Salzburg, and Regensburg", 18],
    ["Ireland", "Visit St. Patricks Cathedral and Trinity College in Dublin, visit King John's Castle and St. Mary's Cathedral in Limerick", 18],
    ["France", "Visit Chateau de Villandry in the Loire Valley", 17]
]

plan_list.each do |place, adventure, traveler_id|
  Plan.create( place: place, adventure: adventure, traveler_id: traveler_id )
end

provider_list = [
    ["Brendan Vacations", "https://www.brendanvacations.com"],
    ["Viking", "https://www.vikingcruises.com/"],
    ["Holland America Line", "https://www.hollandamerica.com/en_US.html"],
    ["Avanti Destinations", "https://www.avantidestinations.com/home"],
    ["Insight Vacations", "tps://www.insightvacations.com/us"],
    ["Trafalgar", "https://www.trafalgar.com/en-us"]
]

provider_list.each do |name, website|
  Provider.create( name: name, website: website )
end

offer_list = [
    ["Enchanting Emerald Isle", 
     "Experience lush green countryside and dramatic coastal cliff",
     "throughout the year",
     "7 days",
     1980.00, 
     1],
    ["Romantic Danube", 
    	"Sail through Europe's second longest river from Budapest to Nurenberg, stroll through charming villages and towns along the river",
    	"monthly starting in April",
    	"8 days",
    	1999.00,
    	2],
    ["The Wonders of Alaska", 
    	"Sail up the west coast of North America into the Inside Passage of Alaska, cruise Glacier Bay National Park, offer onboard cooking workshop",
    	"April to September each year",
    	"21 days",
    	3149.00,
    	3],
    ["Veneto Villa Escape", 
    	"A beautiful trip to Northern Italy, stay at a countryside villa, enjoy the region's best wines with local cuisine",
    	"April to October each year",
    	"4 days/3 nights",
    	975.00,
    	4],
    ["Historial France", 
    	"Visit the sites of D-Day landings on Normandy beaches, revell at Chateau d'Usse",
    	"April to October each year",
    	"8 days/7 nights",
    	2850.00,
    	5],
    ["Costa Rica's Eco Adventure", 
    	"Take a seven-day journey through emerald rainforests of Costa Ricawith exotic wild life and breathtaking landscape",
    	"year-round",
    	"7 days/6 nights",
    	1725.00,
    	6]
]

offer_list.each do |tour_name, about, departs, length, price, provider_id|
  Offer.create( tour_name: tour_name, about: about, departs: departs, length: length, price: price, provider_id: provider_id)
end
