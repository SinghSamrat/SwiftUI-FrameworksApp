//
//  FrameworkItemView.swift
//  SwiftUI-FrameworksApp
//
//  Created by Samrat Singh on 12/06/2025.
//

import SwiftUI

struct FrameworkDetailsView: View {
    var body: some View {
        // icon
        VStack {
            Image("swiftui")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Text("SwiftUI")
                .font(.title2)
                .fontWeight(.bold)
        }.safeAreaPadding(.top, 100)
        
        // description
        Text("SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs.\n\nWith a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written.")
            .font(.callout)
            .fontWeight(.medium)
            .padding()
            .padding(.bottom, 100)
            .padding(.top)
        
        // button
        Button() {
            
        } label: {
            Text("Learn More")
        }
        .font(.title2)
        .fontWeight(.semibold)
        .frame(width: 240, height: 60)
        .background(Color.red)
        .cornerRadius(10)
        .foregroundColor(.white)
    }
}


#Preview {
    FrameworkDetailsView()
}
