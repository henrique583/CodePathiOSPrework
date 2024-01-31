//
//  ViewController.swift
//  CodePathiOSPrework
//
//  Created by Henrique Rodrigues on 1/31/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        changeFont()
    }
    
    func changeColor() -> UIColor{

            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
    
    @IBOutlet weak var changeNameFont: UILabel!
    
    var FontIndex = 0
    let fonts = ["Savoye LET", "Marker Felt", "Copperplate", "Party LET", "Comic Sans MS", "Hoefler Text", "Academy Engraved LET", "Snell Roundhand"]
    
    func changeFont() {
        let fontName = fonts[FontIndex]
        changeNameFont.font = UIFont(name: fontName, size: 26) //
        FontIndex = (FontIndex + 1) % fonts.count
    }
}



