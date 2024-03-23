//
//  GenericDataProvider.swift
//  GlobalNewsApp
//
//  Created by Daniel Berg on 22/03/24.
//

import Foundation

protocol GenericDataProvider {
    func success(model: Any)
    func errorData(_ provide: GenericDataProvider?, error: Error)
}

class DataProviderManager<T, S> {
    var delegate: T?
    var model: S?
}
