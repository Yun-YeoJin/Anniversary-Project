
import UIKit
import Foundation




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
    
    
    @IBOutlet var DayCollection: [UILabel]!
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LabelDesign(Day100Label, "100")
        LabelDesign(Day200Label, "200")
        LabelDesign(Day300Label, "300")
        LabelDesign(Day400Label, "400")
        DateLabelDesign(Day100DateLabel)
        DateLabelDesign(Day200DateLabel)
        DateLabelDesign(Day300DateLabel)
        DateLabelDesign(Day400DateLabel)
        ImageDesign(Day100Image)
        ImageDesign(Day200Image)
        ImageDesign(Day300Image)
        ImageDesign(Day400Image)
        DateSetting()
        
    }
    
    func LabelDesign(_ DayLabel: UILabel, _ Text: String) {
        DayLabel.text = "D+" + Text
        DayLabel.textColor = .white
        DayLabel.font = UIFont.boldSystemFont(ofSize: 20)
    }
    
    func DateLabelDesign(_ DateLabel: UILabel) {
        DateLabel.textColor = .white
        DateLabel.font = UIFont.boldSystemFont(ofSize: 18)

    }

    func ImageDesign(_ ImageNumber: UIImageView) {
        ImageNumber.layer.cornerRadius = 15
        ImageNumber.layer.borderWidth = 2
        ImageNumber.layer.borderColor = UIColor.clear.cgColor
        ImageNumber.clipsToBounds = true
        
    }
    
    //dateFormat 바꾸는 방법 1 (Date -> String)
    func dateToStringChatTime() -> String {
         let curDate = Date()
         let formatter = DateFormatter()
         formatter.locale = Locale(identifier: "ko") //한국시간
         formatter.dateFormat = "yyyy년 MM월 dd일" //표시방법
         return formatter.string(from: curDate)
     }
    //dateFormat 바꾸는 방법 2
    func DateSetting() {
        let date = Date()
        let hundreddate = Date() + TimeInterval(8640000)
        let twohundreddate = hundreddate + TimeInterval(8640000)
        let threehundreddate = twohundreddate + TimeInterval(8640000)
        let fourhundreddate = threehundreddate + TimeInterval(8640000)
        
        let formatter = DateFormatter()
        formatter.timeZone = .current
        formatter.locale = .current
        formatter.dateFormat = "yyyy년 MM월 dd일"
        Day100DateLabel.text = formatter.string(from: hundreddate)
        Day200DateLabel.text = formatter.string(from: twohundreddate)
        Day300DateLabel.text = formatter.string(from: threehundreddate)
        Day400DateLabel.text = formatter.string(from: fourhundreddate)
        
    }
    
  
}
//String -> Date로 변환
//let dateStr = "2020-08-13 16:30" // Date 형태의 String
//let nowDate = Date() // 현재의 Date
//
//let dateFormatter = DateFormatter()
//dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
//
//let convertDate = dateFormatter.date(from: dateStr) // Date 타입으로 변환

//Date -> String으로 변환
//let myDateFormatter = DateFormatter()
//myDateFormatter.dateFormat = "yyyy.MM.dd a hh시 mm분"
//myDateFormatter.locale = Locale(identifier:"ko_KR") // PM, AM을 언어에 맞게 setting (ex: PM -> 오후)
//let convertStr = myDateFormatter.string(from: convertDate!)
//let convertNowStr = myDateFormatter.string(from: nowDate) // 현재 시간의 Date를 format에 맞춰 string으로 반환

