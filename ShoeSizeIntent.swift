//
//  ShoeSizeIntent.swift
//  hello
//
//  Created by Aaron Saunders on 7/23/23.
//

import Foundation
import AppIntents

@available(iOS 16.0, macOS 13.0, watchOS 9.0, tvOS 16.0, *)
struct ShoeSizeIntent: AppIntent, CustomIntentMigratedAppIntent {
    static let intentClassName = "ShoeSizeIntent"

    static var title: LocalizedStringResource = "Shoe Size Intent"
    static var description = IntentDescription("Shoe Size Intent Description")

    static var parameterSummary: some ParameterSummary {
        Summary("Shoe Size Example")
    }

    @MainActor
    func perform() async throws -> some IntentResult & ReturnsValue<String> {
        // TODO: Place your refactored intent handler code here.
        print("in intent handler")
        return .result(value: "9.5")
    }
    
    static var openAppWhenRun: Bool = true
}


public struct HelloAppShortcuts: AppShortcutsProvider {
    public static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: ShoeSizeIntent(),
            phrases: ["\(.applicationName) What Is My Shoe Size"]
//            systemImageName: "books.vertical.fill"
        )
    }
}



