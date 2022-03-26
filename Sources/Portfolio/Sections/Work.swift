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
		VStack {
			HStack {
				WarOnCancerBadge()
				TeamEngineBadge()
			}
			.class("badgeContainer")

			HStack {
				SpotifyBadge()
				EricssonBadge()
			}
			.class("badgeContainer")
		}
		.id("workContainer")
	}
}

struct WarOnCancerBadge: Component {
	
	var body: Component {
		Div {
			Div()
				.class("companyLogo")
				.id("warOnCancerLogo")
			Div {
				Paragraph("iOS Engineer")
					.id("jobTitle")
				Paragraph("At War on Cancer, I work with in a team dedicated to creating the best possible platform for improving mental health for people going through a cancer diagnosis, toiling away with some of the latest and greatest that development on Apple platforms has to offer.")
					.class("workParagraph")
			}
			.class("workDescription")
			.id("teamEngineDescription")
		}
		.class("badge")
		.id("warOnCancer")
	}
}

struct TeamEngineBadge: Component {
	
	var body: Component {
		Div {
			Div()
				.class("companyLogo")
				.id("teamEngineLogo")
			Div {
				Paragraph("iOS Developer")
					.id("jobTitle")
				Paragraph("As the sole full time iOS Developer for the Stockholm native TeamEngine, I took their iOS offering to new highs and modernized multiple aspects of their app while the company was expanding its reach both in terms of users and employees.")
					.class("workParagraph")
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
				Paragraph("Front-End Intern")
					.id("jobTitle")
				Paragraph("At Spotify, I worked as a front-end developer intern in a team responsible for creating the tools used for programming and content management in the Spotify application, mainly utlizing React and Typescript to create said tools.")
					.class("workParagraph")
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
				Paragraph("UX / UI Intern")
					.id("jobTitle")
				Paragraph(" My internship at Ericsson revolved around user testing of their new intranet, but I also took my own initiatives and created a clickable prototype of the website for testing purposes, as well as some vector art for some internal online workspaces.")
					.class("workParagraph")
			}
			.class("workDescription")
			.id("ericssonDescription")
		}
		.class("badge")
		.id("ericsson")
	}
}
