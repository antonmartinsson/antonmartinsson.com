//
//  Work.swift
//  Portfolio
//
//  Created by Anton Martinsson on 2021-05-15.
//

import Foundation
import Plot

struct Work: Component {
	
	var body: Component {
		HStack {
			TeamEngineBadge()
			SpotifyBadge()
			EricssonBadge()
		}
		.id("badgeContainer")
	}
}

struct TeamEngineBadge: Component {
	
	var body: Component {
		Div {
			Div()
				.class("companyLogo")
				.id("teamEngineLogo")
			Div {
				H2("iOS Developer")
				Paragraph("As an iOS Developer for the rapidly growing TeamEngine, I have the responsibility of making their iOS offering the best it can be, working with the latest and greatest that Xcode and Swift has to offer.")
			}
			.class("workDescription")
			.id("teamEngineDescription")
		}
		.class("badge")
		.id("teamEngine")
	}
}

struct SpotifyBadge: Component {
	
	var body: Component {
		Div {
			Div()
				.class("companyLogo")
				.id("spotifyLogo")
			Div {
				H2("Developer intern")
				Paragraph("At Spotify, I worked as a front-end developer intern in a team responsible for creating the tools used for programming and content management in the Spotify application, mainly utlizing React and Typescript to create said tools.")
			}
			.class("workDescription")
			.id("spotifyDescription")
		}
		.class("badge")
		.id("spotify")
	}
}

struct EricssonBadge: Component {
	
	var body: Component {
		Div {
			Div()
				.class("companyLogo")
				.id("ericssonLogo")
			Div {
				H2("UX / UI Intern")
				Paragraph(" My internship at Ericsson revolved around user testing of their new intranet, but I also took my own initiatives and created a clickable prototype of the website for testing purposes, as well as some vector art for some internal online workspaces.")
			}
			.class("workDescription")
			.id("ericssonDescription")
		}
		.class("badge")
		.id("ericsson")
	}
}
