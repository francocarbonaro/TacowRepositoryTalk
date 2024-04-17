//
//  Team.swift
//  TacowRepository
//
//  Created by Franco Carbonaro on 2024-04-14.
//

import Foundation

struct Team: Decodable, Identifiable, Hashable {
	let name: String
	let conference: String
	let division: String

	var id: String {
		name
	}
}
