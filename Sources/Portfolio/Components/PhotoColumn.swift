//
//  File.swift
//  
//
//  Created by Anton Martinsson on 2021-05-22.
//

import Foundation
import Plot

struct PhotoColumn: Component {
	var imagePaths: [String]
	var indexOrderString: String
	
	var body: Component {
		VStack {
			for imagePath in imagePaths {
				Image(imagePath)
					.class("photo")
			}
		}
		.class("column")
		.id("\(indexOrderString)Column")
	}
}

