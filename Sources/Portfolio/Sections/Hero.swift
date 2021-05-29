//
//  Hero.swift
//  
//  Created by Anton Martinsson on 2021-05-15.
//

import Foundation
import Plot

struct Hero: Component {
	
	var title: String = "Hi, I'm Anton"
	var subtitle: String = "I create using cameras and code"
	
	var body: Component {
		Div {
			Div(title)
				.class("hi")
			Div(subtitle)
				.id("subtitle")
		}
		.id("heroContainer")
	}
}
