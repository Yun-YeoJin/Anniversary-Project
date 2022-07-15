

import UIKit

class Transition2ViewController: UIViewController {

    @IBOutlet weak var mottoTextView: UITextView!
    
    @IBOutlet weak var CountLabel: UILabel!
    /*
     1.앱을 킨다 -> 데이터를 가지고 와서 텍스트 뷰에 보여주어야함. (View관련 함수에 입력)
     2.바뀐 데이터를 저장해주어야한다.
     => UserDefault(Key, Value 형식)
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Transition2ViewController", #function)
        
        CountLabel.text = "\(UserDefaults.standard.integer(forKey: "Emotion"))"
        
        
        if UserDefaults.standard.string(forKey: "nickname") != nil {
        //데이터 가져오기
        mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
        
        } else {
            //데이터가 없는 경우 "윤기사" 추천
            mottoTextView.text = "윤기사"
        }

        
        
        
//        print(UserDefaults.standard.string(forKey: "phoneNumber")) //nil (Optional 타입이라서)
//        print(UserDefaults.standard.integer(forKey: "age")) //0
//        print(UserDefaults.standard.bool(forKey: "inapp")) //false
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Transition2ViewController", #function)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Transition2ViewController", #function)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Transition2ViewController", #function)
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Transition2ViewController", #function)
    }

    @IBAction func saveButtonClicked(_ sender: UIButton) {
        
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("저장되었습니다!")
    }
    
    // 감정 올리기 버튼 클릭시 옆 CountLabel 숫자 1씩 올리기.
    @IBAction func emotionButtonClicked(_ sender: UIButton) {
      
        //기존 데이터값 가져오기
        let currentValue = UserDefaults.standard.integer(forKey: "Emotion")
        let updateValue = currentValue + 1 //int라 가능
        
        UserDefaults.standard.set(updateValue, forKey: "Emotion") //새로운 값 저장하기.
        
        CountLabel.text = "\(UserDefaults.standard.integer(forKey: "Emotion"))"//"\(currentValue)는 안댐"
    
    }
    
}
