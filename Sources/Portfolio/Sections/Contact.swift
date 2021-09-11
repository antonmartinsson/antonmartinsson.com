//
//  File.swift
//  
//
//  Created by Anton Martinsson on 2021-05-22.
//

import Foundation
import Plot

struct Contact: Component {
	
	var body: Component {
		Div {
			Div {
				Div {
					Paragraph("I'm always up for a chat.")
					Paragraph("Contact me if you are.")
				}.id("message")
				Div().class("grid-item-divider grid-item-divider-left")
				VStack {
					Div {
						Link("antonm@rtinsson.com", url: "mailto:antonm@rtinsson.com")
					}.id("email")
					HStack {
						Link(url: "https://www.twitter.com/ntonmartinsson") {
							Image(url: "Logos/twitter.png", description: "Twitter logo")
						}
						.id("twitterLogo")

						Link(url: "https://www.github.com/antonmartinsson") {
							Image(url: "Logos/github.png", description: "Github logo")
						}
						.id("githubLogo")
					}
					.style("margin-top: 20px;")
				}
			}
			.id("contactInfo")
			Div {
				
			}
			.id("portraitContainer")
		}
		.id("contactContainer")
	}
}

