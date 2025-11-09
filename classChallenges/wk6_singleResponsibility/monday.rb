class Calculations
    R = 6378100   # radius of the earth in m
  def initialize(d)
    @d = d
  end

  def deg2rad(d)
    d * Math::PI / 180
  end

  def distance(lat1, lon1, lat2, lon2)
    # https://stackoverflow.com/a/27943

    dLat = self.deg2rad(lat2 - lat1)
    dLon = self.deg2rad(lon2 - lon1)
    a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
      Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *
      Math.sin(dLon / 2) * Math.sin(dLon / 2)
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
    R * c  # distance in m
  end

end 

class EventManager < Calculations

  def initialize(eventList)
    @eventList = eventList
  end


  def findEventsNear(lat, lon, maxDist=5000)
    events = []

    @eventList.each { |event|
      name, type, elat, elon = event.split(":")
      elat = elat.to_f
      elon = elon.to_f

      if self.distance(lat, lon, elat, elon) < maxDist
        events << event
      end
    }
    
    events
  end

  def findEarthquakesNear(cityName)
    cityRecord = nil

    @eventList.each { |event|
      name, type, elat, elon = event.split(":")
      elat = elat.to_f
      elon = elon.to_f

      if type == "city" && name == cityName
        cityRecord = event
      end
    }

    if cityRecord.nil?
      return nil
    end

    name, type, clat, clon = cityRecord.split(":")
    clat = clat.to_f
    clon = clon.to_f

    events = []

    @eventList.each { |event|
      name, type, elat, elon = event.split(":")
      elat = elat.to_f
      elon = elon.to_f

      if type == "earthquake"
        if distance(elat, elon, clat, clon) < 5000
          events << event
        end
      end
    }

    events
  end

  def addEvent(name, type, lat, lon, time = -1)
    @eventList << "#{name}:#{type}:#{lat}:#{lon}:#{time}"
  end
end

starting_events = [
  "some volcano:volcano:40.12120:-121.3455:21451",
  "some earthquake:earthquake:40.51230:-121.23425:87153",
  "another earthquake:earthquake:39.23890:-120.23985:17354",
  "yet another earthquake:earthquake:39.23223:-120.23125:16524",
  "another volcano:volcano:43.32890:-122.3289:23856",
  "a geyser:geyser:39.23223:-120.23125",
  "Townville:city:44.05645:-121.30812"
]

em = EventManager.new(starting_events)

em.addEvent("my favorite hotspring", "hotspring", 46.1231, -115.23234)
em.addEvent("Cityton", "city", 40.5232, -121.23453)
em.addEvent("yet another volcano", "volcano", 15.52232, -107.03521, 256923)

x = em.findEventsNear(40.5, -121.2, 163000)
pp x

puts "------------------------"

x = em.findEarthquakesNear("Cityton")
pp x


'''
part1: calculates distances of events. Also addeds other landmarks besides cities.

part2: types of data, kinds of functionality ?, levels of abstraction?
- the main data type is events and their attributes. Calculates earthquates. Levels of abstraction happen within methods. Abstracted away calculations and adding new events. 
part3: 
- consolidated the add_ method to just one addEvent method. Also, created Calculation class for the degree to radius conversion method and distance calculations, and the eventManager is a child class of it.

'''
