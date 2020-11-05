Provider.destroy_all
Offer.destroy_all
Traveler.destroy_all
Plan.destroy_all

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
    ["Alaska", "Sail through the Inside Passage of Alaska on a cruiseship.", 6],
    ["Iceland", "Visit the Golden Circle, the Blue Lagoon", 1],
    ["Japan", "Visit imperial palaces in Kyoto, sample sake, take sushi-making lessons.", 1],
    ["Hawaii", "Visit Waikiki beach in Oahu", 5],
    ["Costa Rica", "Visit Monteverde Cloud Forest, Tortuguero National Park, and Arenal Volcano", 2],
    ["Northern Italy", "Visit Venice, Verona, Cortina, and Lake Garda", 5],
    ["The Danube", "Sail though three countries in Danube river cruise, vist Budapest, Vienna, Salzburg, and Regensburg", 6],
    ["Ireland", "Visit St. Patricks Cathedral and Trinity College in Dublin, visit King John's Castle and St. Mary's Cathedral in Limerick", 6],
    ["France", "Visit Chateau de Villandry in the Loire Valley", 5]
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
     "https://www.ireland-information.com/public-domain-photographs-of-ireland/photos/thumbnails/Dunguire-Castle-Dunguaire-Galway-s1.jpg",
     1980.00, 
     1],
    ["Romantic Danube", 
    	"Sail through Europe's second longest river from Budapest to Nurenberg, stroll through charming villages and towns along the river",
    	"monthly starting in April",
    	"8 days",
    	1999.00,
        "https://previews.123rf.com/images/kanuman/kanuman1504/kanuman150400125/38639786-budapest-in-hungary.jpg",
    	2],
    ["The Wonders of Alaska", 
    	"Sail up the west coast of North America into the Inside Passage of Alaska, cruise Glacier Bay National Park, offer onboard cooking workshop",
    	"April to September each year",
    	"21 days",
    	3149.00,
        "https://previews.123rf.com/images/ramunas/ramunas1701/ramunas170100095/70698856-the-scenic-view-of-a-glacier-in-glacier-bay-national-park-alaska-.jpg",
    	3],
    ["Veneto Villa Escape", 
    	"A beautiful trip to Northern Italy, stay at a countryside villa, enjoy the region's best wines with local cuisine",
    	"April to October each year",
    	"4 days/3 nights",
    	975.00,
        "https://previews.123rf.com/images/freeartist/freeartist1508/freeartist150800106/44685734-beautiful-lago-di-como-lenno-italy.jpg",
    	4],
    ["Historial France", 
    	"Visit the sites of D-Day landings on Normandy beaches, revell at Chateau d'Usse",
    	"April to October each year",
    	"8 days/7 nights",
    	2850.00,
        "https://previews.123rf.com/images/macsim/macsim1810/macsim181000043/110084841-top-view-of-the-mont-saint-michel-bay-normandy-france.jpg",
    	5],
    ["Costa Rica's Eco Adventure", 
    	"Take a seven-day journey through emerald rainforests of Costa Ricawith exotic wild life and breathtaking landscape",
    	"year-round",
    	"7 days/6 nights",
    	1725.00,
        "https://previews.123rf.com/images/kamchatka/kamchatka1801/kamchatka180100091/94040786-majestic-waterfall-in-the-rainforest-jungle-of-costa-rica-tropical-hike-.jpg",
    	6]
]

offer_list.each do |tour_name, about, departs, length, price, image, provider_id|
  Offer.create( tour_name: tour_name, about: about, departs: departs, length: length, price: price, image: image, provider_id: provider_id)
end
