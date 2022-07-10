//
//  NewsViewMode;.swift
//  NewsApp
//
//  Created by Роман Замолотов on 09.07.2022.
//

import Foundation

struct NewsViewModel {
    let news: News
    
    var author: String {
        return news.author ?? "Unknow"
    }
    
    var title: String {
        return news.title ?? ""
    }
    
    var description: String {
        return news.description ?? ""
    }
    
    var url:String {
        return news.url ?? ""
    }
    
    var urlToImage:String {
        return news.urlToImage ?? "https://media.istockphoto.com/vectors/speech-bubble-with-breaking-news-vector-id1268498566?k=20&m=1268498566&s=612x612&w=0&h=YsnmUXQeIpiPqlFySHMi4o112RW_xOay-dVCpqk3qKM="
    }
}
