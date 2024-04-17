//
//  PlayersRepository.swift
//  TacowRepository
//
//  Created by Franco Carbonaro on 2024-04-14.
//

import Foundation

protocol PlayersRepository {
	func getPlayer(id: String) async -> Player?

	func getCareerStats(id: String) async -> [CareerStats]
}
