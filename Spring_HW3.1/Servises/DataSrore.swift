//
//  DataSrore.swift
//  Spring_HW3.1
//
//  Created by Алексей Гайдуков on 15.08.2022.
//

import SpringAnimation

class DataSrore {
    
    static let shared = DataSrore()
    
    let curves = AnimationCurve.allCases
    
    private init() {}
}
