//
//  TeamsListViewModel.swift
//  TacowRepository
//
//  Created by Franco Carbonaro on 2024-04-14.
//

import Foundation

struct TeamsListViewModel {
	private let repository: TeamsRepository

	init(repository: TeamsRepository) {
		self.repository = repository
	}

	func getTeams() async -> [Team] {
		await repository.getTeams(league: "nhl")
	}
}
