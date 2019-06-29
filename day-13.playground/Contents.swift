import UIKit

var songs: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

type(of: songs)

var person = [
    "website": "taylorswift.com"
]

person["new"] = "value"

person.remove(at: person.index(forKey: "website")!)
print(person)


for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

var str = "Fakers gonna"

for _ in 1 ..< 5 {
    str += " fake"
}

print(str)


let studioAlbums = 1

switch studioAlbums {
    case 0...1:
        print("You're just starting out")
        fallthrough
    
    case 2...3:
        print("You're a rising star")
        fallthrough
    
    case 4...5:
        print("You're world famous!")
        fallthrough
    
    default:
        print("Have you done something new?")
}

enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType.wind(speed: 9))


class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")

var allAlbums: [Album] = [taylorSwift, fearless]

for album in allAlbums {
    let studioAlbum = album as! StudioAlbum
    print(studioAlbum.studio)
}

let vw = UIView()

UIView.animate(withDuration: 0.5) {
    vw.alpha = 0
}
