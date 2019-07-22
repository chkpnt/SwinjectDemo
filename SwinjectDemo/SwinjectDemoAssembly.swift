//
//  SwinjectDemoAssembly.swift
//  SwinjectDemo
//
//  Created by Gregor Dschung on 22.07.19.
//  Copyright © 2019 Gregor Dschung. All rights reserved.
//

import Swinject

class SwinjectDemoAssembly: Assembly {
        
    func assemble(container: Container) {
        container.register(Bla.self) { _ in DefaultBla() }
    }
}

protocol Bla {
    func blub()
}

class DefaultBla: Bla {
    
    func blub() {
        print("blub() called")
    }
}
