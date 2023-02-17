//
//  ModelOfPost.swift
//  Navigation
//
//  Created by Светлана Малюгина on 13.12.2022.
//

import Foundation
import UIKit
import iOSIntPackage

var dataForCells: [ModelPost] {
    return [ModelPost(author: "Britain's Family", description: "We decided to take a shower together every friday, that's funny and good way to see all family after really hard sleepy week", image: "pablicBath", likes: 11909, views: 23198),
            ModelPost(author: "Snowy Joe", description: "Most people hate winter because of snow. Howewer, i really like it", image: "winterCat", likes: 12391, views: 21908),
            ModelPost(author: "Hungry Simba", description: "I asked the hostess to give me tuna so many times, but i have to eat kiticat every damn morning", image: "angrycat", likes: 2871, views: 30909),
            ModelPost(author: "Sleepy Stipe", description: "I like to sleep. I would sleep all the time if I didn't have to eat", image: "Sleepingcat", likes: 1019, views: 9871)]
}



struct ModelPost {
    var author: String
    var description: String
    var image: String
    var likes: Int
    var views: Int
    
}

struct ImagesForCollection {
    var image: String
}

var dataForCollection: [ImagesForCollection] {
    return [ImagesForCollection(image: "Cat1"),
    ImagesForCollection(image: "cat2"),
    ImagesForCollection(image: "Cat3"),
    ImagesForCollection(image: "cat4"),
    ImagesForCollection(image: "cat5"),
    ImagesForCollection(image: "cat7"),
    ImagesForCollection(image: "cat8"),
    ImagesForCollection(image: "cat9"),
    ImagesForCollection(image: "cat10"),
    ImagesForCollection(image: "cat11"),
    ImagesForCollection(image: "cat12"),
    ImagesForCollection(image: "cat13"),
    ImagesForCollection(image: "cat14"),
    ImagesForCollection(image: "cat15"),
    ImagesForCollection(image: "cat16"),
    ImagesForCollection(image: "cat17"),
    ImagesForCollection(image: "cat18"),
    ImagesForCollection(image: "cat19"),
    ImagesForCollection(image: "cat20")]
}
