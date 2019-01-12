//
//  UILabel+Image.swift
//  ImageLabel
//
//  Created by ankur.lahiry on 12/1/19.
//  Copyright © 2019 ankur.lahiry. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    func addImageWith(name: String, behindText: Bool) {
        // if image is behind the text set behindText = true , else : false
        let attachment = NSTextAttachment()
        attachment.image = UIImage(named: name)
        let attachmentString = NSAttributedString(attachment: attachment)
        
        guard let text = self.text else {
            return
        }
        
        if (text.isEmpty) {
            return
        }
        
        if behindText {
            let labelText = NSMutableAttributedString(string: text + " ")
            labelText.append(attachmentString)
            self.attributedText = labelText
        } else {
            let labelText = NSAttributedString(string: " " + text)
            let mutableAttachmentString = NSMutableAttributedString(attributedString: attachmentString)
            mutableAttachmentString.append(labelText)
            self.attributedText = mutableAttachmentString
        }
    }
    
    func removeImage() {
        let text = self.text
        self.attributedText = nil
        self.text = text
    }
}
