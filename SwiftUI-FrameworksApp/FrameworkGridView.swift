//
//  FrameworkGridView.swift
//  SwiftUI-FrameworksApp
//
//  Created by Samrat Singh on 12/06/2025.
//

import SwiftUI

struct FrameworkGridView: View {
    var columns: [GridItem] = [GridItem(.flexible(minimum: 90)),
                              GridItem(.flexible(minimum: 90)),
                               GridItem(.flexible(minimum: 90))
    ]
    var body: some View {
        NavigationView() {
            ScrollView() {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(MockData.frameworks) { frameworkData in
                        FrameworkItemView(framework: frameworkData)
                    }
                }.padding(.top, 20)
            }.navigationTitle("Frameworks")
                .overlay(
                    Image(systemName: "apple.logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                        .padding(.trailing, 20)
                        .offset(x: 0, y: -50)
                    , alignment: .topTrailing)
        }
    }
}

struct FrameworkItemView: View {
    var framework: Framework
    var body: some View {
        VStack() {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90, alignment: .center)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
}

#Preview {
    FrameworkGridView()
}
