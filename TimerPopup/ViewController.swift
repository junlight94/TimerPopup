//
//  ViewController.swift
//  TimerPopup
//
//  Created by 이준영 on 2022/05/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    //MARK: 버튼 클릭
    @IBAction func buttonAction(_ sender: Any) {
        //클릭 안에 들어왔다는 것을 보여주기 위해 타이틀 변경
        button.setTitle("버튼클릭", for: .normal)
        
        //Timer 사용
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(popup), userInfo: nil, repeats: false)
    }
    
    //3초뒤에 실행될 함수
    @objc func popup() {
        let popup = Popup(nibName: "Popup", bundle: nil)
        popup.modalPresentationStyle = .overCurrentContext
        self.present(popup, animated: false)
    }
}

