#!/usr/bin/swift

import Foundation

func solve(for input: String) -> Int {
	input.components(separatedBy: .newlines)
		.joined()
		.map { $0 == "(" ? 1 : -1 }
		.enumerated()
		.reduce(into: (sum: 0, pos: 1)) { result, element in
			if result.sum != -1 {
				result.sum += element.1
				if element.0 != 0 {
					result.pos = element.0 + 1
				}
			}
		} 
		.pos
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