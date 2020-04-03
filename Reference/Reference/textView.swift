//
//  textView.swift
//  Reference
//
//  Created by Shweta Mehta on 31/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import SwiftUI

struct TextView: UIViewRepresentable {
    typealias UIViewType = UITextView
    
    @Binding var txt : String
    var placeholderText: String = "Insert notes here"
    
    func makeUIView(context: UIViewRepresentableContext<TextView>) -> UITextView {
        let textView = UITextView()
        
        textView.textContainer.lineFragmentPadding = 5
        textView.textContainerInset = .zero
        
        // Round the corners.
        textView.layer.masksToBounds = true

        // Set the size of the roundness.
        textView.layer.cornerRadius = 5.0
        
        // Set the thickness of the border.
        textView.layer.borderWidth = 1

        // Set the border color to black.
        textView.layer.borderColor = UIColor.gray.cgColor
        
        
        
        // Set the font.
        textView.font = UIFont.systemFont(ofSize: 16.0)

        // Set left justified.
        textView.textAlignment = NSTextAlignment.left

        textView.text = placeholderText
        textView.textColor = .placeholderText

        // Automatically detect links, dates, etc. and convert them to links.
        textView.dataDetectorTypes = UIDataDetectorTypes.all

        // Set shadow darkness.
        textView.layer.shadowOpacity = 0.5
        
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<TextView>) {
    }
    
    func makeCoordinator() -> TextView.Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        var parent : TextView
        
        init(_ parent: TextView) {
            self.parent = parent
        }
        
        func textViewDidBeginEditing(_ textView: UITextView) {
            if textView.textColor == .placeholderText && textView.text == "Insert notes here" {
                textView.text = ""
                textView.textColor = .label
            }
        }
    }
}

