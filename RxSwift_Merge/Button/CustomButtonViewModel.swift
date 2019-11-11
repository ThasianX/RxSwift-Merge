//
//  CustomButtonViewModel.swift
//  RxSwift_Merge
//
//  Created by Kevin Li on 11/11/19.
//  Copyright © 2019 Kevin Li. All rights reserved.
//

import UIKit
import RxSwift

protocol CustomButtonViewPresentable {
    var backgroundColor: UIColor { get }
    var title: String { get }
    var tapPublishSubject: PublishSubject<String> { get }
}

class CustomButtonViewModel: CustomButtonViewPresentable {
    
    var title: String = ""
    var backgroundColor: UIColor = UIColor.blue
    
    var tapPublishSubject: PublishSubject<String> = PublishSubject()
    
    init(title: String) {
        self.title = title
    }
}
