// swift-tools-version:5.0

import PackageDescription

let package = Package(
	name: "Documentation",
	products: [
		.library(
			name: "Documentation",
			targets: [
				"Documentation"
			]
		)
	],
	targets: [
		.target(
			name: "Documentation"
		),
		.target(
			name: "DocumentationPlayground",
			dependencies: [
				"Documentation"
			]
		)
	]
)
