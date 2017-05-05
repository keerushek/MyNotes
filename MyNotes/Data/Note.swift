//
//  Note.swift
//  MyNotes
//
//  Created by Keerthi Shekar G on 05/05/17.
//  Copyright © 2017 Keerthi Shekar G. All rights reserved.
//

import Foundation
import RealmSwift

// Note model
class Note: Object {
    dynamic var noteTitle = ""
    dynamic var noteCreatedAt = NSDate(timeIntervalSince1970: 1)
    dynamic var noteModifiedAt = NSDate(timeIntervalSince1970: 1)
    dynamic var noteContent = ""
    dynamic var noteRemainderTime = NSDate()
    let notePictures = List<Picture>()
    let noteCheckBoxes = List<CheckBox>()
    
}
// Folder model
class Folder: Object {
    dynamic var folderTitle = ""
    dynamic var folderCreatedAt = NSDate(timeIntervalSince1970: 1)
    let notes = List<Note>()
}
// CheckBox model
class CheckBox: Object {
    dynamic var checkBoxContent = ""
    dynamic var checkBoxCreatedAt = NSDate(timeIntervalSince1970: 1)
    dynamic var checkBoxModifiedAt = NSDate(timeIntervalSince1970: 1)
    dynamic var checkBoxisChecked = false
}
//Picture model
class Picture: Object {
    dynamic var pictureName = ""
    dynamic var pictureAddedAt = NSDate(timeIntervalSince1970: 1)
    dynamic var pictureLocalLocation = ""
}
