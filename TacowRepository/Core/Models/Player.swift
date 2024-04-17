//
//  Player.swift
//  TacowRepository
//
//  Created by Franco Carbonaro on 2024-04-14.
//

import Foundation

struct Player: Decodable, Identifiable, Hashable {
	let name: String
	let number: String
	let position: String

	var id: String {
		name
	}
}
