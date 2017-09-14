//
//  InputView.swift
//  BIGroup
//
//  Created by Robert Kim on 7/5/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class DropInputView: UIView {
    
    var textField: FloatLabelTextField!
    var iconImage: UIImageView!
    var keyboardView: KeyboardView!
    
    @IBInspectable var placeholder: String! {
        didSet{
            textField.placeholder = self.placeholder
        }
    }
    
    @IBInspectable var disabled: Bool = false {
        didSet{
            textField.isUserInteractionEnabled = !disabled
            textField.backgroundColor = UIColor.bgaPaleGrey
        }
    }
    
    var items: [String]! {
        didSet {
            self.keyboardView = KeyboardView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.45), items: self.items)
            self.textField.inputView = self.keyboardView
            
            
            print(items, "did set")
            
        }
    }
    
    var bColor: UIColor! {
        didSet{
            self.layer.borderColor = self.borderColor.cgColor
        }
    }
    
    init(frame: CGRect, items: [String]) {
        super.init(frame: frame)
        self.items = items
        layout()
        
        self.keyboardView = KeyboardView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.45), items: self.items)
        self.textField.inputView = self.keyboardView
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layout()
    }
    
    func layout(){
    
        self.layer.cornerRadius = 2
        self.layer.borderWidth = 1.5
        self.layer.borderColor = UIColor.bgaPaleGreyTwo.cgColor
        
        
        textField = FloatLabelTextField(frame: CGRect(x: 8, y: 4, width: self.frame.size.width - 48, height: self.frame.size.height - 8))
    
        textField.titleYPadding = 2
//        textField.hintYPadding = -6
        textField.titleTextColour = UIColor.bgaSteel
        textField.titleActiveTextColour = UIColor.bgaSteel
    
        iconImage = UIImageView(frame: CGRect(x: textField.frame.maxX + 8, y: 12, width: 24, height: 24))
        iconImage.image = UIImage(named: "down.png")
        iconImage.contentMode = .scaleAspectFit
        
        self.addSubview(textField)
        self.addSubview(iconImage)
    }
    
}

class InputView: UIView {
    
    var textField: FloatLabelTextField!
    var keyboardView: KeyboardView!
    
    @IBInspectable var placeholder: String! {
        didSet{
            textField.placeholder = self.placeholder
        }
    }
    
    @IBInspectable var disabled: Bool = false {
        didSet{
            textField.isUserInteractionEnabled = !disabled
            textField.backgroundColor = UIColor.bgaPaleGrey
        }
    }
    
    
    var bColor: UIColor! {
        didSet{
            self.layer.borderColor = self.borderColor.cgColor
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layout()
    }
    
    func layout(){
        
        self.layer.cornerRadius = 2
        self.layer.borderWidth = 1.5
        self.layer.borderColor = UIColor.bgaPaleGreyTwo.cgColor
        
        
        textField = FloatLabelTextField(frame: CGRect(x: 8, y: 4, width: self.frame.size.width - 16, height: self.frame.size.height - 8))
        
        textField.titleYPadding = 2
        //        textField.hintYPadding = -6
        textField.titleTextColour = UIColor.bgaSteel
        textField.titleActiveTextColour = UIColor.bgaSteel
        
        self.addSubview(textField)
    }
    
}

class InputAreaView: UIView {
    
    var textField: FloatLabelTextView!
    
    @IBInspectable var placeholder: String! {
        didSet{
            textField.hint = placeholder
        }
    }
    
    @IBInspectable var disabled: Bool = false {
        didSet{
            textField.isUserInteractionEnabled = !disabled
            textField.backgroundColor = UIColor.bgaPaleGrey
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layout()
    }
    
    func layout(){
        
        self.layer.cornerRadius = 2
        self.layer.borderWidth = 1.5
        self.layer.borderColor = UIColor.bgaPaleGreyTwo.cgColor
        
        
        textField = FloatLabelTextView(frame: CGRect(x: 8, y: 4, width: self.frame.size.width - 16, height: self.frame.size.height - 8))
        
        textField.titleYPadding = 2
        //        textField.hintYPadding = -6
        textField.titleTextColour = UIColor.bgaSteel
        textField.titleActiveTextColour = UIColor.bgaSteel
        
        self.addSubview(textField)
    }
    
}


class KeyboardView: UIView, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var pickerView: UIPickerView!
    var items:[String]!
    var doneButton: UIButton!
    
    init(frame: CGRect, items: [String]) {
        super.init(frame: frame)
        self.items = items
        layout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func layout(){
        
        self.backgroundColor = UIColor(red: 240.0/255.0, green: 240/255.0, blue: 242/255.0, alpha: 0.0)
        
        pickerView = UIPickerView(frame: CGRect(x: 0, y: 44, width: self.frame.width, height: self.frame.height - 44))
        pickerView.dataSource = self
        pickerView.delegate = self
        pickerView.backgroundColor = UIColor(red: 204/255.0, green: 211/255.0, blue: 221/255.0, alpha: 0.5)
        
        doneButton = UIButton(frame: CGRect(x: self.frame.width - 76, y: 8, width: 60, height: 28))
        doneButton.setTitle("Готово", for: .normal)
        doneButton.setTitleColor(UIColor.bgaDarkishBlue, for: .normal)
        
        self.addSubview(pickerView)
        self.addSubview(doneButton)
    
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(items[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print(component)
        return items[row]
    }
    
}
































