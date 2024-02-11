//
//  QuestionService.swift
//  LingoMingo
//
//  Created by Junyeong Jo on 2/10/24.
//

// ai ask questions

import Foundation
import OpenAI

struct QuestionService {
    
    static let openAI = OpenAI(apiToken: "key")
    
    static func fetchTestQuestion(completion: @escaping (String?) -> Void) {
        let query = ChatQuery(
            model: .gpt4_1106_preview,
            messages: [.init(role: .user, content: "Create a English speaking test question.")],
            maxTokens: 100
        )
        
        openAI.chats(query: query) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let chatResult):
                    let response = chatResult.choices.first?.message.content
                    completion(response)
                case .failure(let error):
                    print("Error fetching test question: \(error)")
                    completion(nil)
                }
            }
        }
    }
    
    
    
    
    
}
