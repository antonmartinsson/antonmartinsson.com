//
//  File.swift
//  
//
//  Created by Anton Martinsson on 2021-05-16.
//

import Foundation
import Plot

struct ProjectInfo {
	let title: String
	let longDescription: String
	let shortDescription: String
	let imagePath: String
	let shortHand: String
	let link: String
}

enum Alignment {
	case right
	case left
}

struct Project: Component {
	var projectInfo: ProjectInfo
	var iconAlignment: Alignment
	
	var body: Component {
		Link(url: projectInfo.link) {
			Div {
				if iconAlignment == .left {
					Image(url: projectInfo.imagePath, description: "")
						.class("projectImage")
						.id("\(projectInfo.shortHand)Icon")
					VStack {
						Div(projectInfo.title)
							.class("projectTitle")
							.id("\(projectInfo.shortHand)Title")

						Div(projectInfo.longDescription)
							.class("projectLongText")
							.id("\(projectInfo.shortHand)LongText")

						Div(projectInfo.shortDescription)
							.class("projectShortText")
							.id("\(projectInfo.shortHand)ShortText")
					}
				} else {
					VStack {
						Div(projectInfo.title)
							.class("projectTitle")
							.id("\(projectInfo.shortHand)Title")

						Div(projectInfo.longDescription)
							.class("projectLongText")
							.id("\(projectInfo.shortHand)LongText")

						Div(projectInfo.shortDescription)
							.class("projectShortText")
							.id("\(projectInfo.shortHand)ShortText")
					}
					Image(url: projectInfo.imagePath, description: "")
						.class("projectImage")
						.id("\(projectInfo.shortHand)Icon")
				}
			}
			.class("project")
			.id(projectInfo.shortHand)
		}
	}
}
