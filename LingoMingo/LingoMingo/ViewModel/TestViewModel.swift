//
//  TestViewModel.swift
//  LingoMingo
//
//  Created by Junyeong Jo on 2/10/24.
//

// handle speech framework, mic, volume, etc

import Foundation
import OpenAI

class TestViewModel: NSObject, ObservableObject {
    
    private let openAI = OpenAI(apiToken: "key")
    
}
