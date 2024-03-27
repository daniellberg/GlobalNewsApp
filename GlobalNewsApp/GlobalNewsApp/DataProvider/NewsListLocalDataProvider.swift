//
//  NewsListLocalDataProvider.swift
//  GlobalNewsApp
//
//  Created by Daniel Berg on 22/03/24.
//

import Foundation

protocol NewsListLocalDataProviderProtocol: GenericDataProvider {}

class NewsListLocalDataProvider: DataProviderManager<NewsListLocalDataProviderProtocol, NewsModel> {
    
    func getNewList(){
        NewsListRepository.shared.getNewsList { newModelList, error in
            if let error = error {
                self.delegate?.errorData(self.delegate, error: error)
                return
            }
            
            if let model = newModelList {
                self.delegate?.success(model: model)
            }
        }
    }
}
