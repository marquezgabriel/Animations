//
//  ContentView.swift
//  Animations
//
//  Created by Gabriel Marquez on 2022-06-11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    
    var body: some View {

                    // Text("Hello, world!")
                    //    .padding()
                    
                    Button("Tap Me") {
                        // Action
                        // animationAmount += 1
                        
                    }
                    .padding(50)
                    // Make a round red button
                    .background(.red)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    // Increase the button size up
                    //.scaleEffect(animationAmount)
                    // Add Gausian blur
                    //.blur(radius: (animationAmount - 1) * 3)
                    // Add animation into size transision
                    // .animation(.default, value: animationAmount)
                    // .animation(.easeOut, value: animationAmount)
                    // .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: animationAmount)
        
                    // tapping the button will now wait for a second before executing a two-second animation
                    //.animation(
                    //    .easeInOut(duration: 2)
                    //        .delay(1),
                    //    value: animationAmount
                    //)
        
                    // one-second animation that will bounce up and down before reaching its final size
                    //.animation(
                    //    .easeInOut(duration: 1)
                    //        .repeatCount(3, autoreverses: true),
                    //    value: animationAmount
                    //)
        
                    .overlay(
                        Circle()
                            .stroke(.red)
                            .scaleEffect(animationAmount)
                            .opacity(2 - animationAmount)
                            .animation(
                                .easeOut(duration: 1)
                                    .repeatForever(autoreverses: false),
                                value: animationAmount
                            )
                    )
        
                    // This repeats forever
                    //.animation(
                    //    .easeInOut(duration: 1)
                    //        .repeatForever(autoreverses: true),
                    //    value: animationAmount
                    //)
        
                    .onAppear {
                        animationAmount = 2
                    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
