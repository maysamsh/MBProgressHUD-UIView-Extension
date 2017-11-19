//
//  UIView+Ext.swift
//  dehkhoda
//
//  Created by Maysam Shahsavari on 10/27/17.
//  Copyright © 2017 Maysam Shahsavari. All rights reserved.
//

import Foundation
import MBProgressHUD

extension UIView{
    
    private struct hudStruct {
        static var hud = MBProgressHUD()
        static var hudProgress: Float = 0
    }
    
    var hud:MBProgressHUD {
        get{
            return hudStruct.hud
        }
        
        set {
            hudStruct.hud = newValue
        }
    }
    
    var hudProgress: Float {
        get {
            return hudStruct.hudProgress
        }
        set {
            hudStruct.hudProgress = newValue
            hud.progress = newValue
        }
    }
    
    func showHud(){
        if !hud.isDescendant(of: self) {
            hud = MBProgressHUD.showAdded(to: self, animated: true)
            hud.mode = .indeterminate
            hud.label.text = nil
        }
    }
    
    func showHud(withProgess: Float, hudText:String? = nil) {
        if !hud.isDescendant(of: self) {
            hud = MBProgressHUD.showAdded(to: self, animated: true)
            if let _hudText = hudText {
                hud.label.text = _hudText
            }
            hud.mode = .annularDeterminate
        }
    }
    func hideHud(){
        DispatchQueue.main.async {
            if self.hud.isDescendant(of: self) {
                MBProgressHUD.hide(for: self, animated: true)
                self.hudProgress = 0
            }
        }
    }
}
