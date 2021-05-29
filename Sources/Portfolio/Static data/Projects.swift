//
//  Projects.swift
//
//  Created by Anton Martinsson on 2021-05-16.
//

import Foundation
import Plot

struct Projects {
	
	static let platNiklas = ProjectInfo(title: "Plåtniklas",
										longDescription: "A group project in Advanced Graphics and Interaction at KTH, where one AR player and one VR player share the same game world. It was nominated for 'Technical Excellency' at the 2018 C-Awards, and as far as we know, it's the first game of its kind. ",
										shortDescription: "A VR + AR game nominated for 'Technical Excellency' at the 2018 C-Awards.",
										imagePath: "ProjectImages/platniklas.png",
										shortHand: "platniklas",
										link: "https://techpriestv.github.io/platniklas.com/")
	
	static let martinssonPhotography = ProjectInfo(title: "Martinsson Photography",
												   longDescription: "My app on the iOS App Store, allowing you to download some of the photos on this website in great quality for a (very) small fee.  ",
												   shortDescription: "My app on the iOS App Store that lets you download some of the photos on this website.",
												   imagePath: "ProjectImages/photography.png",
												   shortHand: "martinssonPhoto",
												   link: "https://itunes.apple.com/se/app/martinsson-photography/id1451348954?mt=8")
	
	static let missionEmission = ProjectInfo(title: "Mission Emission",
											 longDescription: "A project in Information Visualization at KTH, developed in partnership with Stockholm Environmental Institute to visualize carbon emissions of nautical exports from Brazil.",
											 shortDescription: "Developed in partnership with SEI to visualize carbon emissions from Brazil.",
											 imagePath: "ProjectImages/missionEmission.png",
											 shortHand: "missionEmission",
											 link: "https://fnoren17.github.io/infovis18/")
	
	static let tweetToBeat = ProjectInfo(title: "Tweet to beat",
										 longDescription: "A hackathon project built during devX 2018 utilizing Twitter and Spotify API to play a song on Spotify based on a user's most tweeted word.",
										 shortDescription: "Play a song on Spotify based on a user's most tweeted word.",
										 imagePath: "ProjectImages/tweetToBeat.png",
										 shortHand: "tweetToBeat",
										 link: "http://tweettobeat.glitch.me/")
	
	static let pokefy = ProjectInfo(title: "Pokéfy",
									longDescription: "A hackathon project built during devX 2019 utilizing the PokéAPI and Spotify API to let the user experience the thrill of a Pokémon battle based on one of your recently streamed tracks.",
									shortDescription: "Experience the thrill of a Pokémon battle based on one of your recently streamed tracks.",
									imagePath: "ProjectImages/poke.png",
									shortHand: "pokefy",
									link: "https://pokefy-devx.herokuapp.com/")
}
