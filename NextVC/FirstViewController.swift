//
//  FirstViewController.swift
//  NextVC
//
//  Created by 김태경 on 2023/01/04.
//

import UIKit

class FirstViewController: UIViewController {
    
    let mainLabel = UILabel()
    let backButton = UIButton(type: .custom)
    
    // 이제 데이터를 받아서 다음화면에 전달할 것이다. 일반적으로 데이터를 받고 전달할때는 옵셔널 형태로 정의한다.
    // 옵셔널 처리를 하지 않으면 생성자를 만들어야하는데 뷰 컨트롤러에서는 그 방법이 복잡하다. 그래서 그냥 옵셔널 처리 하는게 마음이 편함.
    var someString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        configureUI()
        
        
        
        
    }
    
    func setup() {
        
        // mainLabel.text = "화면 전환이 됐습니다."
        mainLabel.text = someString
        mainLabel.font = UIFont.systemFont(ofSize: 22)
        
        
        view.addSubview(mainLabel)
        /// 화면에 올리는 역할이고 표시를 하기 위해선 오토레이아웃을 잡아놔야한다.
        
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.backgroundColor = UIColor.blue
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside) // 버튼을 눌렀을때 동작을 하게끔 한다.
        /// 위에 addTarget 사용법은. 먼저 self를 사용하고 그 다음 #selector(메서드 이름) 이때 메서드는 앞에 @objc를 붙혀서 만들어야한다. 그 다음 for: (작동방법)
        
        // 화면에 올려주기
        view.addSubview(backButton)
        
        view.backgroundColor = .gray
        
    }
    
    
    func configureUI() {
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true // 0이라고 한다는 의미는 가운데에 정확히 한다는 의미 그리고 지워도 상관 없음.
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
    
        // autolayout 잡아주기
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    
    
    
    
    
    
    
    
    
    @objc func backButtonTapped() {
        // 백버튼을 누르면 다시 원래 화면으로 화면전환을 할 수 있는데 더 간단한 방법이 있다.
        // dismiss (철회하기) 기능이 아예 구현되어 있다.
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    func makeAutoLayout() {
        
        
        
    }
    

    
    
    
}
