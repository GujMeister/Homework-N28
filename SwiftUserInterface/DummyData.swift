//
//  DummyData.swift
//  SwiftUserInterface
//
//  Created by Luka Gujejiani on 22.05.24.
//

import SwiftUI

struct ListItem: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}

let sampleData: [ListItem] = [
    ListItem(title: "Understanding SwiftUI", description: "Learn the basics of SwiftUI framework."),
    ListItem(title: "Advanced Swift Techniques", description: "Deep dive into advanced topics in Swift."),
    ListItem(title: "Design Patterns in iOS", description: "Explore common design patterns used in iOS development."),
    ListItem(title: "Networking in Swift", description: "Implement networking in Swift with URLSession."),
    ListItem(title: "Concurrency in Swift", description: "Understand concurrency and async/await in Swift."),
    ListItem(title: "UI Testing in Xcode", description: "Learn how to write UI tests in Xcode."),
    ListItem(title: "Combine Framework", description: "Introduction to Combine framework for reactive programming."),
    ListItem(title: "Core Data Basics", description: "Getting started with Core Data for persistence."),
    ListItem(title: "Animations in SwiftUI", description: "Create smooth animations with SwiftUI."),
    ListItem(title: "Swift Package Manager", description: "Manage dependencies using Swift Package Manager."),
    ListItem(title: "Working with JSON", description: "Parse and decode JSON in Swift."),
    ListItem(title: "Debugging in Xcode", description: "Tips and tricks for debugging in Xcode."),
    ListItem(title: "Creating Custom Views", description: "Build custom views in SwiftUI."),
    ListItem(title: "Accessibility in iOS", description: "Make your apps accessible to everyone."),
    ListItem(title: "Localization in iOS", description: "Support multiple languages in your iOS app."),
    ListItem(title: "Intro to ARKit", description: "Augmented Reality experiences with ARKit."),
    ListItem(title: "Building WatchOS Apps", description: "Develop apps for Apple Watch with WatchOS."),
    ListItem(title: "HealthKit Integration", description: "Integrate HealthKit into your iOS apps."),
    ListItem(title: "Using MapKit", description: "Add maps and location features with MapKit."),
    ListItem(title: "In-App Purchases", description: "Implement in-app purchases in your apps."),
    ListItem(title: "Introduction to Swift", description: "Learn the fundamentals of Swift programming language."),
    ListItem(title: "Memory Management in Swift", description: "Understand memory management and ARC in Swift."),
    ListItem(title: "Unit Testing in Swift", description: "Write unit tests for your Swift code."),
    ListItem(title: "Handling User Input", description: "Capture and handle user input in your apps."),
    ListItem(title: "Building Responsive UI", description: "Design responsive user interfaces in SwiftUI."),
    ListItem(title: "Intro to SpriteKit", description: "Create 2D games with SpriteKit."),
    ListItem(title: "Gesture Recognizers", description: "Implement gesture recognizers in your apps."),
    ListItem(title: "Exploring Swift Playgrounds", description: "Learn Swift with interactive Swift Playgrounds."),
    ListItem(title: "Data Persistence", description: "Persist data with UserDefaults and Core Data."),
    ListItem(title: "Profiling with Instruments", description: "Use Instruments to profile and optimize your apps.")
]

let colors: [Color] = [.red, .green, .blue, .orange, .purple, .pink, .yellow, .cyan, .mint]

