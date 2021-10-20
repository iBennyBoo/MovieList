import Foundation
public class InfoClass{
    
    var text: String = ""
    var year: Int = 0
    var name : String = ""
    var score: Int = 0
    var movie: list!
    var image: String = ""
    
    enum list {
    case Paddington_2, Karen, Cars_2, Pixels, Irishman, Garfield, Garfield_2, Garfield_3, Shrek, Shrek_2, Shrek_3, Shrek_4
    }
    
    
    init(name: String){
        switch name {
        case "Paddington 2":
            text = "Settled in with the Brown family, Paddington the bear is a popular member of the community who spreads joy and marmalade wherever he goes. One fine day, he spots a pop-up book in an antique shop -- the perfect present for his beloved aunt's 100th birthday. When a thief steals the prized book, Paddington embarks on an epic quest to unmask the culprit before Aunt Lucy's big celebration."
            year = 2018
            self.name = "Paddington 2"
            image = "paddington_2"
            score = 99
            movie = .Paddington_2
            
        case "Karen":
            text = "Karen Drexler, a racist white woman who makes it her personal mission to displace the new Black family that has just moved in next door to her. Community activist Malik and his wife Imani are the couple who have just moved to the Atlanta suburb, but they won't be backing down without a fight."
            year = 2021
            self.name = "Karen"
            score = 17
            movie = .Karen
            image = "karen"
        case "Cars 2":
            text = "Racecar Lightning McQueen and his tow-truck buddy, Mater, have had their share of adventures together but nothing like what they experience when they head overseas for the first-ever World Grand Prix. While Lightning has his eye on the road to the championship, Mater takes a detour to international espionage when he meets British master spy Finn McMissile and stunning spy-in-training Holley Shiftwell."
            image = "Cars_2"
            year = 2011
            self.name = "Cars 2"
            score = 40
            movie = .Cars_2
        case "Pixels":
            text = "When aliens intercept video feeds of classic arcade games and misinterpret them as a declaration of war, they attack Earth, using the games as models. Knowing that he must employ a similar strategy, President Kevin James recruits his childhood pal, former video-game champ and home-theater installer Adam Sandler, to lead a team of old-school arcade players and a military specialist in an all-out battle to save the planet."
            year = 2015
            image = "pixels"
            self.name = "Pixels"
            score = 18
            movie = .Pixels
        case "The Irishman":
            text = "In the 1950s, truck driver Frank Sheeran gets involved with Russell Bufalino and his Pennsylvania crime family. As Sheeran climbs the ranks to become a top hit man, he also goes to work for Jimmy Hoffa -- a powerful Teamster tied to organized crime."
            year = 2019
            self.name = "The Irishman"
            score = 95
            image = "irishman"
            movie = .Irishman
        case "Garfield":
            text = "When the conniving orange feline gets fed up with Odie, he devises a way to get rid of the pooch. However, after Garfield has a change of heart about Odie, he must find a way to get his fellow pet back. Lasagna."
            year = 2004
            self.name = "Garfield"
            score = 15
            image = "garfield"
            movie = .Garfield
        case "Garfield: A Tale of Two Kitties":
            text = "Garfield follows Jon to England and receives the royal treatment after he is mistaken for the heir to a grand castle. However, the feline will need all nine lives to foil the plans of evil Lord Dargis, who wants to turn the castle into a resort."
            year = 2006
            self.name = "Garfield: A Tale of Two Kitties"
            score = 12
            movie = .Garfield_2
            image = "garfield_2"
        case "Garfield 3: Paris Most Wanted":
            text = "Garfield follows Jon to France and a massive manhunt is out to find Garfield when he commits one of, if not, the most heinous crime of all time."
            year = 2021
            self.name = "Garfield 3: Paris Most Wanted"
            score = 100
            image = "garfield_3"
            movie = .Garfield_3
        case "Shrek":
            text = "Somebody once told me the world is gonna roll me I ain't the sharpest tool in the shed. She was looking kind of dumb with her finger and her thumb in the shape of an 'L' on her forehead."
            year = 2001
            self.name = "Shrek"
            score = 88
            image = "shrek"
            movie = .Shrek
        case "Shrek 2":
            text = "Well the years start coming and they don't stop coming, fed to the rules and I hit the ground running. Didn't make sense not to live for fun, your brain gets smart but your head gets dumb."
            year = 2004
            self.name = "Shrek 2"
            image = "shrek_2"
            score = 89
            movie = .Shrek_2
        case "Shrek 3":
            text = "So much to do, so much to see so what's wrong with taking the back streets? You'll never know if you don't go. You'll never shine if you don't glow."
            year = 2007
            self.name = "Shrek 3"
            movie = .Shrek_3
            score = 42
            image = "shrek_3"
        case "Shrek 4":
            text = "Hey now, you're an all-star, get your game on, go play. Hey now, you're a rock star, get the show on, get paid. And all that glitters is gold, only shooting stars break the mold."
            year = 2010
            self.name = "Shrek 4"
            image = "shrek_4"
            score = 58
            movie = .Shrek_4
        case "":
            self.name = name
            text = "No movie selected. Are you happy? Are you proud of what you have done here? Look what you did. You decided to go straight to this view thinking that you were so smart. But look at you now, a sad sad mess of a human being. What has this come to? Did you really think you were funny doing this? If you did, man, that was pretty funny."
        default:
            text = "Custom movie selected. No description for this movie because the website is incomplete. I mean, when you are looking off of wikipedia... this usually happens..."
            image = "ChuckNorris2"
        }
    }
    
    func returnText() -> String{
        return text
    }
    
    func toString() -> String{
        return "\(name) released in \(year) with a score of \(score)%"
    }
    
    
}
