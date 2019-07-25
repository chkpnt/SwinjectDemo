//
//  SomeOtherFrameworkAssembly.swift
//  SomeOtherFramework
//
//  Created by Gregor Dschung on 25.07.19.
//  Copyright © 2019 Gregor Dschung. All rights reserved.
//

import Swinject

public class SomeOtherFrameworkAssembly: Assembly {
    
    public init() {}
    
    public func assemble(container: Container) {
        container.register(SomeOtherFrameworkStuff.self) { _ in DefaultSomeOtherFrameworkStuff() }
    }
}
