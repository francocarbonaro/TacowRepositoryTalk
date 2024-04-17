//
//  ListItem.swift
//
//
//  Created by Franco Carbonaro on 2024-04-15.
//

import Foundation

public struct ListItem: Hashable {
	let title: String
	let subtitle: String

	public init(title: String, subtitle: String) {
		self.title = title
		self.subtitle = subtitle
	}
}
