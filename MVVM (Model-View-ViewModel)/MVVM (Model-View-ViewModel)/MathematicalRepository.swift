//
//  MathematicalRepository.swift
//  MVVM (Model-View-ViewModel)
//
//  Created by Ahmet Erkut on 17.10.2023.
//

import Foundation
import RxSwift

class MathematicalRepository {
    var result = BehaviorSubject<String>(value: "0")
    
    func sum(gotNumberOne: String, gotNumberTwo: String) {
        if let no1 = Int(gotNumberOne), let no2 = Int(gotNumberTwo) {
            let summation = no1 + no2
            result.onNext(String(summation)) //trigger
        }
    }
    
    func multi(gotNumberOne: String, gotNumberTwo: String) {
        if let no1 = Int(gotNumberOne), let no2 = Int(gotNumberTwo) {
            let multiply = no1 * no2
            result.onNext(String(multiply)) //trigger
        }
    }
}
