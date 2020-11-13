//
//  IconNote.swift
//  04-TableViewIcons
//
//  Created by Jermaine Francoeur on 2020-11-13.
//

import Foundation

class IconNote {
    var icon: String
    var text: String
    
    init(IconString icon:String, NoteText text:String?) {
        self.icon = icon
        self.text = text ?? "sparkles"
    }
}
