//
//  MessageCenterView.swift
//  browteco
//
//  Created by Joao Paulo Galvao Alves on 4/1/16.
//  Copyright © 2016 Jalvestech. All rights reserved.
//

import UIKit

protocol ConfigureDescriptionsDataSource {
    var title : String { get }
    var errorMessage : String { get }
    
}

protocol ConfigureDescriptionsWithDelegate {
    
    func onSwitchToggleOn(on: Bool)
    
    var switchColor : UIColor { get }
    var textColor : UIColor { get }
    var font : UIFont { get }
    
    
}


extension ConfigureDescriptionsWithDelegate {
    
    var switchColor : UIColor {
        return .yellowColor()
    }
    
    var textColor : UIColor {
        return .purpleColor()
    }
    
    var font : UIFont {
        return .systemFontOfSize(17)
    }
    
}

class MessageCenterView  {
    
    private var dataSource : ConfigureDescriptionsDataSource?
    private var delegate : ConfigureDescriptionsWithDelegate?
    
    func configure(withDataSource dataSource: ConfigureDescriptionsDataSource, delegate: ConfigureDescriptionsWithDelegate?) {
        self.dataSource = dataSource
        self.delegate = delegate
        
    }
    
    
    
}






























