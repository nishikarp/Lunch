//
//  ContentView.swift
//  Shared
//
//  Created by Nishikar Paruchuri on 9/17/21.
//

import SwiftUI

struct Welcome: View
{
    

    var body: some View
    {
            //.padding()
        //ExtractedView3()
        ZStack
        {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            Text("Welcome to our App")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            
           
        
        }
}
               // .padding();
struct Welcome_Previews: PreviewProvider
{
    static var previews: some View
    {
        Welcome()
    }
}
}


