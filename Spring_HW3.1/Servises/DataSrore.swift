//
//  DataSrore.swift
//  Spring_HW3.1
//
//  Created by Алексей Гайдуков on 15.08.2022.
//

import SpringAnimation

class DataSrore {
    
    static let shared = DataSrore()
    
    let animations: [AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInRight,
        .fadeInLeft,
        .fadeIn,
        .fadeInUp,
        .fadeOut,
        .fall,
        .flash,
        .pop,
        .flipY,
        .slideRight,
        .wobble,
        .squeezeRight,
        .zoomOut,
        .squeeze,
        .squeezeUp
    ]
    
    private init() {}
}
