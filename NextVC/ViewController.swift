//
//  ViewController.swift
//  NextVC
//
//  Created by Allen H on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 1) 코드로 화면 이동 (다음화면이 코드로 작성되어있을때만 가능한 방법)
    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        /// fristViewController()라는 인스턴스를 생성을 하고 present로 다음 화면으로 넘어가는 것을 알려주는 것이다.
    
        // 이제 데이터를 전달할 수가 있게 됐다.
        firstVC.someString = "데이터를 전달했습니다."
        
        
        // 만약 전체화면으로 바꾸고 싶다면 아래처럼 추가하자. 여러가지를 설정할 수 있다.
        // modalPresentationStyle을 입력하고 = .을 누르면 여러가지가 뜬다.
        
        firstVC.modalPresentationStyle = .fullScreen
        present(firstVC, animated: true, completion: nil)
        /// completion - 화면이 넘어갔을때 뭘 할껀지. 보통은 아무것도 없기 때문에 nil을 한다.
        /// 
        
        
        
    }
    
    // 2) 코드로 스토리보드 객체를 생성해서, 화면 이동
    @IBAction func storyboardWithCodeButtonTapped(_ sender: UIButton) {
        // 위 처럼 간단하게 코드로 연결 할 수가 없다. 그래서 스토리보드와 연결하기 위해선 다르게 해줘야한다.
        
        // UIViewController에 storyboard라는 변수가 이미 있다. 그거 이용하는 것임.
        // 아래처럼 설정했다면 스토리보드로 가서 내가 적은 string과 똑같이 id를 설정해야한다. 
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        
        present(secondVC, animated: true, completion: nil)
        
        
        
    }
    
    
    
    // 3) 스토리보드에서의 화면 이동(간접 세그웨이)
    @IBAction func storyboardWithSegueButtonTapped(_ sender: UIButton) {
        

        
        
        
        
    }
    

    
}

