//
//  SomeFrameworkAssembly.swift
//  SomeFramework
//
//  Created by Gregor Dschung on 22.07.19.
//  Copyright © 2019 Gregor Dschung. All rights reserved.
//

import Swinject

public class SomeFrameworkAssembly: Assembly {
    
    public init() {}
    
    public func assemble(container: Container) {
        container.register(SomeFrameworkStuff.self) { _ in DefaultSomeFrameworkStuff() }
    }
}
