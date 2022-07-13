

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Day100Label: UILabel!
    @IBOutlet weak var Day200Label: UILabel!
    @IBOutlet weak var Day300Label: UILabel!
    @IBOutlet weak var Day400Label: UILabel!
    @IBOutlet weak var Day100DateLabel: UILabel!
    @IBOutlet weak var Day200DateLabel: UILabel!
    @IBOutlet weak var Day300DateLabel: UILabel!
    @IBOutlet weak var Day400DateLabel: UILabel!
    @IBOutlet weak var Day100Image: UIImageView!
    @IBOutlet weak var Day300Image: UIImageView!
    @IBOutlet weak var Day200Image: UIImageView!
    @IBOutlet weak var Day400Image: UIImageView!
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LabelDesign(Day100Label, "100")
        LabelDesign(Day200Label, "200")
        LabelDesign(Day300Label, "300")
        LabelDesign(Day400Label, "400")
        
        DateLabelDesign(Day100DateLabel, "100일후")
        DateLabelDesign(Day200DateLabel, "200일후")
        DateLabelDesign(Day300DateLabel, "300일후")
        DateLabelDesign(Day400DateLabel, "400일후")
        
        ImageDesign(Day100Image)
        ImageDesign(Day200Image)
        ImageDesign(Day300Image)
        ImageDesign(Day400Image)
    }
    
    func LabelDesign(_ DayLabel: UILabel, _ Text: String) {
        DayLabel.text = "D+" + Text
        DayLabel.textColor = .white
        DayLabel.font = UIFont.boldSystemFont(ofSize: 20)
    }
    
    func DateLabelDesign(_ DateLabel: UILabel, _ LabelText: String) {
        DateLabel.text = LabelText
        DateLabel.textColor = .white
        DateLabel.font = UIFont.boldSystemFont(ofSize: 23)
    }

    func ImageDesign(_ ImageNumber: UIImageView) {
        ImageNumber.layer.cornerRadius = 15
        ImageNumber.layer.borderWidth = 2
        ImageNumber.layer.borderColor = UIColor.clear.cgColor
        ImageNumber.clipsToBounds = true
        
    }
}

