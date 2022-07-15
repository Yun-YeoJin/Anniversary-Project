
import UIKit
import Foundation


class ViewController: UIViewController {

    
    @IBOutlet var DayImageCollection: [UIImageView]!
    
    @IBOutlet var D_DayLabelCollection: [UILabel]!
    @IBOutlet var DayCollection: [UILabel]!
    
    @IBOutlet weak var DatePicker: UIDatePicker!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //DatePicker 스타일 -> 인라인으로 변경
        DatePicker.preferredDatePickerStyle = .inline
        
        LabelDesign()
        ImageDesign()
        DateLabelDesign()
        
        // 현재 날짜에서 D+100, D+200, D+300, D+400 표시해놓기
        for i in 0...DayCollection.count-1{
            CalculateDay(i, (i+1)*100)
        }
       
    }
    
    // D_Day 레이블 설정
    func LabelDesign() {
        for i in D_DayLabelCollection {
        i.textColor = .white
        i.font = UIFont.boldSystemFont(ofSize: 20)
    }
    }
    // D+100, D+200, D+300, D+400 레이블 설정
    func DateLabelDesign() {
        for i in DayCollection {
        i.textColor = .white
        i.font = UIFont.boldSystemFont(ofSize: 18)
        }
    }
    // 이미지 설정
    func ImageDesign() {
        for i in DayImageCollection {
        i.layer.cornerRadius = 15
        i.layer.borderWidth = 2
        i.layer.borderColor = UIColor.clear.cgColor
        i.clipsToBounds = true
        }
    }
    // DatePicker에서 정한 날짜로 디데이 계산하기.
    func CalculateDay(_ i: Int, _ a: Int) {
        DayCollection[i].text = "\(DatePicker.calendar.date(byAdding: .day, value: a, to: DatePicker.date)?.formatted(date: .long, time: .omitted) ?? DatePicker.date.formatted(date: .long, time: .omitted))"
    }
    
    //dateFormat 바꾸는 방법 1 (Date -> String)
    func dateToStringChatTime() -> String {
         let curDate = Date()
         let formatter = DateFormatter()
         formatter.locale = Locale(identifier: "ko") //한국시간
         formatter.dateFormat = "yyyy년 MM월 dd일" //표시방법
         return formatter.string(from: curDate)
     }
   
   // DatePicker에서 날짜 수정했을 때 디데이 변경
    @IBAction func datePickerChanged(_ sender: UIDatePicker) {

        for number in 0...DayCollection.count-1 {
            CalculateDay(number, (number+1)*100)
        }
        
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
//
////Date -> String으로 변환
//let myDateFormatter = DateFormatter()
//myDateFormatter.dateFormat = "yyyy.MM.dd a hh시 mm분"
//myDateFormatter.locale = Locale(identifier:"ko_KR") // PM, AM을 언어에 맞게 setting (ex: PM -> 오후)
//let convertStr = myDateFormatter.string(from: convertDate!)
//let convertNowStr = myDateFormatter.string(from: nowDate) // 현재 시간의 Date를 format에 맞춰 string으로 반환

