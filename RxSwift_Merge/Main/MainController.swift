//
//  ViewController.swift
//  RxSwift_Merge
//
//  Created by Kevin Li on 11/11/19.
//  Copyright © 2019 Kevin Li. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MainController: UIViewController {

    @IBOutlet weak var stackViewContainer: UIStackView!
    @IBOutlet weak var labelButtonValue: UILabel!
    
    let viewModel = MainViewModel()
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.items.forEach { (buttonViewModel) in
            let button = CustomButton(viewModel: buttonViewModel)
            stackViewContainer.addArrangedSubview(button)
        }
        
        Observable.merge(viewModel.items.map({ $0.tapPublishSubject}))
            .map({ $0.uppercased()})
            .bind(to: labelButtonValue.rx.text)
            .disposed(by: disposeBag)
        
        
    }


}

