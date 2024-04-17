// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct AmazingList: View {
	@State
	private var items: [ListItem] = []

	let repository: AmazingListRepository

	public init(repository: AmazingListRepository) {
		self.repository = repository
	}

	public var body: some View {
		VStack {
			List(items, id: \.self) { item in
				VStack(alignment: .leading) {
					Text(item.title)
					Text(item.subtitle)
				}
			}
		}
		.task {
			items = await repository.getData()
		}
	}
}

#Preview("TV Shows") {
	AmazingList(
		repository: PreviewAmazingListRepository()
	)
}

