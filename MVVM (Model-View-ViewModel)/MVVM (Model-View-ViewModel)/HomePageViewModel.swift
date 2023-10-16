//
//  HomePageViewModel.swift
//  MVVM (Model-View-ViewModel)
//
//  Created by Ahmet Erkut on 17.10.2023.
//

import Foundation
import RxSwift

class HomePageViewModel {
    var result = BehaviorSubject<String>(value: "0")
    var mrepo = MathematicalRepository()
    
    init () {
        result = mrepo.result
    }
    
    func sum(gotNumberOne: String, gotNumberTwo: String) {
        mrepo.sum(gotNumberOne: gotNumberOne, gotNumberTwo: gotNumberTwo)
    }
    
    func multi(gotNumberOne: String, gotNumberTwo: String) {
        mrepo.multi(gotNumberOne: gotNumberOne, gotNumberTwo: gotNumberTwo)
    }
}
