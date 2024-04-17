//
//  ContentView.swift
//  TacowRepository
//
//  Created by Franco Carbonaro on 2024-04-14.
//

import MyAmazingList
import SwiftUI

struct ContentView: View {
	let teams = ["Basketball", "Hockey"]
	let myAmazingList = ["Teams", "Players"]

	var body: some View {
		NavigationStack {
			List {
				Section(header: Text("Teams")) {
					ForEach(teams, id: \.self) { item in
						NavigationLink(item) {
							let repository: TeamsRepository = {
								if item == "Basketball" {
									return BasketballTeamsRepository()
								}
								else {
									return HockeyTeamsRepository()
								}
							}()

							TeamsListView(
								viewModel: TeamsListViewModel(repository: repository)
							)
						}
					}
				}

				Section(header: Text("My Amazing List")) {
					ForEach(myAmazingList, id: \.self) { item in
						NavigationLink(item) {
							let repository = AmazingListRepositoryFactory.makeRepository(item: item)

							AmazingList(repository: repository)
						}
					}
				}
			}
		}
		.navigationTitle("Demo")
	}
}

#Preview {
	ContentView()
}
