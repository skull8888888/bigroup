//
//  Extensions.swift
//  BIGroup
//
//  Created by Robert Kim on 7/3/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

extension UIColor {
    class var bgaDarkishBlue: UIColor {
        return UIColor(red: 0.0, green: 74.0 / 255.0, blue: 146.0 / 255.0, alpha: 1.0)
    }
    
    class var bgaPaleGrey: UIColor {
        return UIColor(red: 239.0 / 255.0, green: 239.0 / 255.0, blue: 244.0 / 255.0, alpha: 1.0)
    }
    
    class var bgaPaleGreyTwo: UIColor {
        return UIColor(red: 229.0 / 255.0, green: 229.0 / 255.0, blue: 234.0 / 255.0, alpha: 1.0)
    }
    
    class var bgaSilver: UIColor {
        return UIColor(red: 209.0 / 255.0, green: 209.0 / 255.0, blue: 214.0 / 255.0, alpha: 1.0)
    }
    
    class var bgaSilverTwo: UIColor {
        return UIColor(red: 199.0 / 255.0, green: 199.0 / 255.0, blue: 204.0 / 255.0, alpha: 1.0)
    }
    
    class var bgaSteel: UIColor {
        return UIColor(red: 142.0 / 255.0, green: 142.0 / 255.0, blue: 147.0 / 255.0, alpha: 1.0)
    }
    
    class var bgaGreyishBrown: UIColor {
        return UIColor(white: 69.0 / 255.0, alpha: 1.0)
    }
    
    class var bgaLipstick: UIColor {
        return UIColor(red: 227.0 / 255.0, green: 42.0 / 255.0, blue: 92.0 / 255.0, alpha: 1.0)
    }
    
    class var bgaBlack: UIColor {
        return UIColor(white: 0.0, alpha: 1.0)
    }
    
    class var bgaLipstickTwo: UIColor {
        return UIColor(red: 226.0 / 255.0, green: 42.0 / 255.0, blue: 92.0 / 255.0, alpha: 1.0)
    }
    
    class var bgaButterScotch: UIColor {
        return UIColor(red: 252.0 / 255.0, green: 197.0 / 255.0, blue: 56.0 / 255.0, alpha: 1.0)
    }
    
}

// Text styles

extension UIFont {
    class func bgaTitleTitle1Font() -> UIFont {
        return UIFont.systemFont(ofSize: 28.0, weight: UIFontWeightLight)
    }
    
    class func bgaTitleTitle3BlackFont() -> UIFont {
        return UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightMedium)
    }
    
    class func bgaTitleTitle3BlueFont() -> UIFont {
        return UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightMedium)
    }
    
    class func bgaTitleTitle3WhiteFont() -> UIFont {
        return UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightRegular)
    }
    
    class func bgaHeadlineLargeDefaultFont() -> UIFont {
        return UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightSemibold)
    }
    
    class func bgaBodyHiteFont() -> UIFont {
        return UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightRegular)
    }
    
    class func bgaBodyFont() -> UIFont {
        return UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightRegular)
    }
    
    class func bgaBodyLargeDefaultFont() -> UIFont {
        return UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightRegular)
    }
    
    class func bgaBodyWhiteFont() -> UIFont {
        return UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightRegular)
    }
    
    class func bgaBodyGrayFont() -> UIFont {
        return UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightRegular)
    }
    
    class func bgaSubheadFont() -> UIFont {
        return UIFont.systemFont(ofSize: 15.0, weight: UIFontWeightSemibold)
    }
    
    class func bgaBodyBoldTextRightAlignFont() -> UIFont {
        return UIFont.systemFont(ofSize: 15.0, weight: UIFontWeightSemibold)
    }
    
    class func bgaSubheadTitleFont() -> UIFont {
        return UIFont.systemFont(ofSize: 15.0, weight: UIFontWeightRegular)
    }
    
    class func bgaBodyTextGrayFont() -> UIFont {
        return UIFont.systemFont(ofSize: 15.0, weight: UIFontWeightRegular)
    }
    
    class func bgaBodyTextFont() -> UIFont {
        return UIFont.systemFont(ofSize: 15.0, weight: UIFontWeightRegular)
    }
    
    class func bgaSubheadWhiteFont() -> UIFont {
        return UIFont.systemFont(ofSize: 15.0, weight: UIFontWeightRegular)
    }
    
    class func bgaLinkWhiteFont() -> UIFont {
        return UIFont.systemFont(ofSize: 14.0, weight: UIFontWeightRegular)
    }
    
    class func bgaLinkBlueFont() -> UIFont {
        return UIFont.systemFont(ofSize: 14.0, weight: UIFontWeightRegular)
    }
    
    class func bgaPriceFont() -> UIFont {
        return UIFont.systemFont(ofSize: 13.0, weight: UIFontWeightSemibold)
    }
    
    class func bgaFootnoteWhiteFont() -> UIFont {
        return UIFont.systemFont(ofSize: 13.0, weight: UIFontWeightRegular)
    }
    
    class func bgaFootnoteLargeDefaultFont() -> UIFont {
        return UIFont.systemFont(ofSize: 13.0, weight: UIFontWeightRegular)
    }
   
    class func bgaFootnoteFont() -> UIFont {
        return UIFont.systemFont(ofSize: 13.0, weight: UIFontWeightRegular)
    }
    
    class func bgaFootnoteLightGrayFont() -> UIFont {
        return UIFont.systemFont(ofSize: 13.0, weight: UIFontWeightRegular)
    }
    
    class func bgaErrorFont() -> UIFont {
        return UIFont.systemFont(ofSize: 12.0, weight: UIFontWeightRegular)
    }
    
    class func bgaCaption1Font() -> UIFont {
        return UIFont.systemFont(ofSize: 12.0, weight: UIFontWeightRegular)
    }
    
    class func bgaCaption1WhiteTransparentFont() -> UIFont {
        return UIFont.systemFont(ofSize: 12.0, weight: UIFontWeightRegular)
    }
    
    class func bgaNavDefaultWhiteFont() -> UIFont {
        return UIFont.systemFont(ofSize: 10.0, weight: UIFontWeightRegular)
    }
    
    class func bgaNavPressedFont() -> UIFont {
        return UIFont.systemFont(ofSize: 10.0, weight: UIFontWeightRegular)
    }
    
    class func bgaNavDefaultFont() -> UIFont {
        return UIFont.systemFont(ofSize: 10.0, weight: UIFontWeightRegular)
    }
}


extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor {

        get {
            return UIColor.bgaPaleGreyTwo
        }
        set{
            layer.borderColor = newValue.cgColor
        }
    }
    
    class func instanceFromNib(_ name: String, frame: CGRect, owner: Any) -> UIView {
        let view = UINib(nibName: name, bundle: nil).instantiate(withOwner: owner, options: nil)[0] as! UIView
        view.frame = frame
        
        return view
    }

}


extension UIViewController {
    func hideBackButton(){
        self.navigationItem.backBarButtonItem?.title = ""
    }
}

