
//  ImageLoaderView.swift
//  juncookSpotify
//
//  Created by Nguyen Ngoc Tuyen on 10/05/2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    
    var urlString: String = Constants.randomImage
    var resizingMode: ContentMode = .fill
    
    
    var body: some View {
        Rectangle()
            .opacity(0.001)
            .overlay( WebImage(url: URL(string: urlString))
                .resizable()
                .indicator(.activity)
                .aspectRatio(contentMode: resizingMode)
                .allowsHitTesting(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
            )
            .clipped()
       
    }
}

#Preview {
    ImageLoaderView(  )
        .cornerRadius(30)
        .padding(40)
        .padding(.vertical,60)
}
