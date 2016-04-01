//
//  MessageCenterViewController.swift
//  browteco
//
//  Created by Joao Paulo Galvao Alves on 4/1/16.
//  Copyright © 2016 Jalvestech. All rights reserved.
//

import UIKit
import JSQMessagesViewController

class MessageCenterViewController: JSQMessagesViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "BrowTeco"

        senderId = "1234"
        
        senderDisplayName = "me"
        
        collectionView.collectionViewLayout.outgoingAvatarViewSize = CGSizeZero
        
        inputToolbar.contentView.leftBarButtonItem = nil
        
        
      
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
