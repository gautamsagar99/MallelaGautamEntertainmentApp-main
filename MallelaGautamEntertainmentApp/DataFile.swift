//
//  DataFile.swift
//  MallelaGautamEntertainmentApp
//
//  Created by Mallela,Gautam Sagar on 4/17/23.
//

import Foundation

struct Actor{
    var fullName: String
    var yearsActive: String
    var movies: [String]
    var actorImageName: String
    var actionEpisodes: String
    var dancingSkills: String
    var performingSkills: String
    var overallRating: Float
}


struct Music: Hashable{
    var title: String
    var composer: String
    var videoId: String
}

var actor1 = Actor(fullName: "Allu Arjun" , yearsActive: "2001 to Present", movies: ["Sarrainodu","alavaikuntapuram", "DJ", "iddaruammayilatho", "sonofsatyamurthy"], actorImageName:
                   
                   "https://upload.wikimedia.org/wikipedia/commons/f/f0/Allu_Arjun_at_62nd_Filmfare_awards_south.jpg", actionEpisodes: "one", dancingSkills: "dancing", performingSkills: "skill", overallRating: 10.0)

var actor2 = Actor(fullName: "Mahesh Babu", yearsActive: "1979 to Present", movies: ["Khaleja","sarileru", "sarkaruvaari","srimanthudu","sarileruneekevvaru"], actorImageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Mahesh_Babu_in_Spyder.jpg/1024px-Mahesh_Babu_in_Spyder.jpg", actionEpisodes: "one", dancingSkills: "dancing", performingSkills: "skill", overallRating: 10.0)

var actor3 = Actor(fullName: "Gopichand", yearsActive: "2001 to Present", movies: ["aaradugulabullet","gautamnanda", "jil","sahasam","wanted"], actorImageName: "https://upload.wikimedia.org/wikipedia/commons/3/3d/Gopichand.png", actionEpisodes: "one", dancingSkills: "dancing", performingSkills: "skill", overallRating: 10.0)

var actor4 = Actor(fullName: "Prabhas", yearsActive: "2002 to Present", movies: ["eeswar","mirchi", "radheshyam","rebel","salaar"], actorImageName: "https://upload.wikimedia.org/wikipedia/commons/7/72/Prabhas_photo.jpg", actionEpisodes: "one", dancingSkills: "dancing", performingSkills: "skill", overallRating: 10.0)

var actor5 = Actor(fullName: "Vijay Devarkonda", yearsActive: "2001 to Present", movies:
                    ["dearcomrade","geethagovindam", "liger", "pellichoopulu", "worldfamouslover"], actorImageName:
                    "https://upload.wikimedia.org/wikipedia/commons/d/d0/Vijay_Deverakonda_at_NOTA_pressmeet_%28cropped%29.jpg"
                    , actionEpisodes: "one", dancingSkills: "dancing", performingSkills: "skill", overallRating: 10.0)



var music1 = Music(title: "Naatu Naatu", composer: "MM Keeravaani", videoId: "qxeDbfyuJPY")
var music2 = Music(title: "Ramuloo Ramulaa", composer: "Thaman S", videoId: "f0QEhTJV8L4")
var music3 = Music(title: "Srivalli", composer: "DSP", videoId: "txHO7PLGE3o")
var music4 = Music(title: "Yentha Sakkagunnave", composer: "DSP", videoId: "eABViudPBFE")
var music5 = Music(title: "Chitti", composer: "Radhan", videoId: "CDk2a39uJUc")

var actors = [actor1, actor2, actor3, actor4, actor5]
var musics = [music1, music2, music3, music4, music5]


struct Rating{
    var acting: String
    var dance: String
    var fight: String
    var overAll: Int
}

var actorRating1 = Rating(acting: "", dance: "", fight: "", overAll: 0)
var actorRating2 = Rating(acting: "", dance: "", fight: "", overAll: 0)
var actorRating3 = Rating(acting: "", dance: "", fight: "", overAll: 0)
var actorRating4 = Rating(acting: "", dance: "", fight: "", overAll: 0)
var actorRating5 = Rating(acting: "", dance: "", fight: "", overAll: 0)


var actorRating = [actorRating1, actorRating2, actorRating3, actorRating4, actorRating5]
