//
//  SectionLabel.swift
//  
//
//  Created by Anton Martinsson on 2021-05-16.
//

import Foundation
import Plot

struct SectionLabel: Component {
	var label: String
	
	var body: Component {
		Div(label)
			.class("sectionLabel")
	}
}
