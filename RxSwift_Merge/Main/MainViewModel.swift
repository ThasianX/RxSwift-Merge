//
//  MainViewModel.swift
//  RxSwift_Merge
//
//  Created by Kevin Li on 11/11/19.
//  Copyright © 2019 Kevin Li. All rights reserved.
//

import Foundation

protocol MainViewPresentable {
    var items: [CustomButtonViewPresentable] { get }
}

class MainViewModel: MainViewPresentable {
    var items: [CustomButtonViewPresentable] = []
    
    init() {
        let one = CustomButtonViewModel(title: "One")
        let two = CustomButtonViewModel(title: "Two")
        let three = CustomButtonViewModel(title: "Three")
        let four = CustomButtonViewModel(title: "Four")
        
        items.append(contentsOf: [one, two, three, four])
    }
    
}
