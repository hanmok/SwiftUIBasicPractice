//
//  ViewModel.swift
//  StatePractice
//
//  Created by 이한목 on 2021/08/31.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject { // it allows you to distribute variable inside app
    @Published var name = "Sam" //
    // @Published: allows to distribute data all across all views
//   Published: A type alias for the Combine framework’s type that publishes a property marked with an attribute.
    func changeName() {
        self.name = "Adam"
    }
}
