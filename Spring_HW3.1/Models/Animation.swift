//
//  Animation.swift
//  Spring_HW3.1
//
//  Created by Алексей Гайдуков on 15.08.2022.
//

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
    present: \(name)
    curve: \(curve)
    force: \(String(format: "%.02f", force))
    duration: \(String(format: "%.02f", duration))
    delay: \(String(format: "%.02f", delay))
    """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataSrore.shared.curves.randomElement()?.rawValue ?? "slideLeft",
            curve: DataSrore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.8...1.6),
            delay: 0.3
        )
    }
}
