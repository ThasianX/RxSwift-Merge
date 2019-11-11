//
//  CustomButton.swift
//  RxSwift_Merge
//
//  Created by Kevin Li on 11/11/19.
//  Copyright © 2019 Kevin Li. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class CustomButton: UIButton {
    
    var viewModel: CustomButtonViewPresentable
    let disposeBag = DisposeBag()
    
    required init?(coder: NSCoder) {
        fatalError("Custom Button not implemented")
    }
    
    required init(viewModel: CustomButtonViewPresentable) {
        self.viewModel = viewModel
        super.init(frame: .zero)
        
        self.backgroundColor = viewModel.backgroundColor
        self.setTitle(viewModel.title, for: .normal)
        self.rx.tap
            .bind {
                self.viewModel.tapPublishSubject.onNext(self.viewModel.title)
                print("Custom button with title \(self.viewModel.title) has been tapped")
        }.disposed(by: disposeBag)
            
    }
}
