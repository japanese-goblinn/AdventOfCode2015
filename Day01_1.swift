#!/usr/bin/swift

import Foundation

func solve(for input: String) -> Int {
	input.components(separatedBy: .newlines)
		.joined()
		.map { $0 == "(" ? 1 : -1 }
		.reduce(into: 0, +=)
}

do {
	let text = try String(
		contentsOf: URL(fileURLWithPath: "Inputs/day01.txt"), 
		encoding: .utf8
	)
	print(solve(for: text))
} catch {
	print("Error reading file: \(error)")
}