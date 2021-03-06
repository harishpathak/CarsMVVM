//
//  Bindable.swift
//  Cars
//
//  Created by Harish Pathak on 15/02/22.
//

import Foundation

class Bindable<T> {
    var value: T? {
        didSet {
            observer?(value)
        }
    }
    
    var observer: ((T?) -> ())?
    
    func bind(observer: @escaping (T?) -> ()) {
        self.observer = observer
        observer(value)
    }
    
}
