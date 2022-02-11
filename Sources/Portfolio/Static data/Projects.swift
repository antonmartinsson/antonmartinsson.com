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
																								 longDescription: "My first ever app on the App Store, allowing you to download some of the photos on this website in great quality for a (very) small fee.  ",
																								 shortDescription: "My first ever app on the App Store that lets you download some of the photos on this website.",
																								 imagePath: "ProjectImages/photography.svg",
																								 shortHand: "martinssonPhoto",
																								 link: "https://itunes.apple.com/se/app/martinsson-photography/id1451348954?mt=8")
	
	static let gaugeKit = ProjectInfo(title: "GaugeKit",
																		longDescription: "GaugeKit is an open source Swift Package I built. It let's you easily create a gauge-like interface to visualize a value between zero and whatever value you want it to top out at.",
																		shortDescription: "GaugeKit is an open source Swift Package I built while working on a personal project of mine.",
																		imagePath: "ProjectImages/GaugeKit.png",
																		shortHand: "gaugeKit",
																		link: "https://github.com/antonmartinsson/GaugeKit")
	
	static let cryptoverview = ProjectInfo(title: "Cryptoverview",
																		longDescription: "Cryptoverview is an app I spun up in order to keep track of some basic crypto metrics, like the Bitcoin Fear and Greed Index and the average ETH gas fee.",
																		shortDescription: "Cryptoverview is an app I spun up in order to keep track of some basic crypto metrics.",
																		imagePath: "ProjectImages/CryptoverviewIcon.png",
																		shortHand: "cryptoverview",
																		link: "https://apps.apple.com/se/app/cryptoverview/id1578673077")
	
	
	
	
}
