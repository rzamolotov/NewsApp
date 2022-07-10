//
//  NewsListViewModel.swift
//  NewsApp
//
//  Created by Роман Замолотов on 09.07.2022.
//

import Foundation

class NewsListViewModel {
    
    var  newsViewModel = [NewsViewModel]()
    
    let reuseID = "news"
    
    func getNews(completition: @escaping ([NewsViewModel]) -> Void) {
        NetworkManager.shared.getNews { (news) in
            guard let news = news else { return }
            let newsViewModel = news.map(NewsViewModel.init)
            DispatchQueue.main.async {
                self .newsViewModel = newsViewModel
                completition(newsViewModel)
            }
        }
    }
}
