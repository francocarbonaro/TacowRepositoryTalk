//
//  HockeyTeamsRepository.swift
//  TacowRepository
//
//  Created by Franco Carbonaro on 2024-04-14.
//

import Foundation

struct HockeyTeamsRepository: TeamsRepository {
	// this would be replace by a real implementation,
	// to get data from an API or database for example
	func getTeams(league: String) async -> [Team] {
		[
			Team(
				name: "Toronto Maple Leafs",
				conference: "Eastern",
				division: "Atlantic"
			),
			Team(
				name: "Montreal Canadiens",
				conference: "Eastern",
				division: "Atlantic"
			),
			Team(
				name: "Boston Bruins",
				conference: "Eastern",
				division: "Atlantic"
			),
			Team(
				name: "Chicago Blackhawks",
				conference: "Western",
				division: "Central"
			),
			Team(
				name: "Los Angeles Kings",
				conference: "Western",
				division: "Pacific"
			),
			Team(
				name: "Vegas Golden Knights",
				conference: "Western",
				division: "Pacific"
			),
			Team(
				name: "New York Rangers",
				conference: "Eastern",
				division: "Metropolitan"
			),
			Team(
				name: "Pittsburgh Penguins",
				conference: "Eastern",
				division: "Metropolitan"
			),
			Team(
				name: "San Jose Sharks",
				conference: "Western",
				division: "Pacific"
			),
			Team(
				name: "St. Louis Blues",
				conference: "Western",
				division: "Central"
			)
		]
	}

	func getRoster(teamID: String) async -> [Player] {
		[]
	}

	func getSchedule(teamID: String) async -> [Event] {
		[]
	}
}
