//
//  HeaderView.swift
//  To Do List App
//
//  Created by Noshaid Ali on 19/08/2024.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subTitle: String
    let angle: Double
    let background: Color
    let offset: Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                Text(subTitle)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width*3, height: 300)
        .offset(y: offset)
    }
}

#Preview {
    HeaderView(title: "title", subTitle: "subTitle", angle: 15, background: .pink, offset: -100)
}
