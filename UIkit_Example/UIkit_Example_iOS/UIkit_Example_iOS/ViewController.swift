import UIKit

import SnapKit
import Then

class ViewController: UIViewController {
    // 🚨 UIKit (UIbutton, UIImageView, UILabel) SnapKit, Then 예제 코드

    var exampleLabel = UILabel().then {
        $0.text = "이거 UILabel 예제" // UILabel 텍스트 지정
        $0.textColor = .blue // UILabel 텍스트 색깔 지정
        $0.font = .systemFont(ofSize: 16, weight: .medium) // UILabel 폰트 지정
        $0.textAlignment = .center // UILabel 텍스트 정렬 지정
        $0.numberOfLines = 1 // UILabel 줄 수 지정. 2줄을 사용하려면 text지정애서 c언어의 줄 바꿈 문법을 활용!
    }
    
    var exampleButton = UIButton().then {
        $0.setTitle("이거 UIButton 예제", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        $0.backgroundColor = .lightGray
        $0.layer.cornerRadius = 8
    }
    
    var exampleImageView = UIImageView().then {
        $0.image = UIImage(named: "Swift")
    }

    override func viewDidLoad() { //❓viewDidLoad가 궁금하다면 View의 생명주기 공부 override도 알아보면 좋음.
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(exampleLabel) // view.addSubview => 이 View 즉 ViewController에 exampleLabel을 추가하겠다.
        view.addSubview(exampleButton)
        view.addSubview(exampleImageView)

//        exampleLabel.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(-200.0)
//            $0.centerX.equalToSuperview()
//        }
//
//        exampleButton.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(-300.0)
//            $0.left.equalToSuperview().inset(-20.0)
//            $0.right.equalToSuperview().inset(20.0)
//            $0.height.equalTo(50.0)
//        }
//        
//        exampleImageView.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(-800.0)
//            $0.width.height.equalTo(280.0)
//        }
        
        exampleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(200.0)
            $0.centerX.equalToSuperview()
        }

        exampleButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(300.0)
            $0.left.right.equalToSuperview().inset(20.0)
            $0.height.equalTo(50.0)
        }

        exampleImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(500.0)
            $0.centerX.equalToSuperview()
            $0.width.height.equalTo(280.0)
        }
    }

}

