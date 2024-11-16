//
//  ViewController.swift
//  MobyStore
//
//  Created by Yernar Dyussenbekov on 16.11.2024.
//

import UIKit
import SwiftyJSON
 

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var basicCamera: UILabel!
    @IBOutlet weak var frontCamera: UILabel!
    @IBOutlet weak var ram: UILabel!
    @IBOutlet weak var rom: UILabel!
    @IBOutlet weak var akb: UILabel!
    @IBOutlet weak var processor: UILabel!
    @IBOutlet weak var freqencyOfProcessor: UILabel!
    @IBOutlet weak var coresOfProcessor: UILabel!
    @IBOutlet weak var OSVersion: UILabel!
    @IBOutlet weak var oldPrice: UILabel!
    @IBOutlet weak var price: UILabel!

    var phone = Phone(json: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.sd_setImage(with: URL(string: phone.image))
        nameLabel.text = phone.name
        basicCamera.text = phone.basicCamera
        frontCamera.text = phone.frontCamera
        ram.text = "\(phone.ram) GB"
        rom.text = "\(phone.rom) GB"
        akb.text = "\(phone.akb) mA*h"
        processor.text = phone.processor
        freqencyOfProcessor.text = phone.freqencyOfProcessor
        coresOfProcessor.text = String(phone.coresOfProcessor)
        OSVersion.text = phone.OSVersion
        let attributrdText = NSAttributedString(string: "\(phone.oldPrice) ₸", attributes: [.strikethroughStyle: NSUnderlineStyle.single.rawValue])
        oldPrice.attributedText = attributrdText
        price.text = "\(phone.price) ₸"
    }
    
}

