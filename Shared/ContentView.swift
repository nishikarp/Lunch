//
//  ContentView.swift
//  Shared
//
//  Created by Nishikar Paruchuri on 9/17/21.
//

import SwiftUI

struct ContentView: View {
    @State private var clicked=false;

    var body: some View {
            //.padding()
        //ExtractedView3()
        ZStack
        {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack
            {
                Text("Don't be Depressed")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .colorScheme(ColorScheme.light)
               
                HStack{
                ExtractedView3()
                    .padding(20)
                ExtractedView3()
                    .padding(20)
                ExtractedView3()
                   .padding(20)
                
                }
                HStack{
                ExtractedView3()
                    .padding(20)
                ExtractedView3()
                    .padding(20)
                ExtractedView3()
                   .padding(20)
                
                }
                HStack{
                ExtractedView3()
                    .padding(20)
                ExtractedView3()
                    .padding(20)
                ExtractedView3()
                   .padding(20)
                
                }
                
                VStack
                {
                    Text("Legend")
                    HStack
                    {
                        Text("Available Seat:")
                        Text(" ")
                            .frame(width:20, height:20)
                            .background(Color.green)
                    }
                    HStack
                    {
                        Text("Taken Seat that you can notify:")
                        Text(" ")
                            .frame(width:20, height:20)
                            .background(Color.black)
                    }
                    
                }
            }
            
           
        }
}
            }
               // .padding();
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Seat: View {
    @State var clicker=0;
    
    var body: some View {
        Button{
            if(clicker<4)
            {
                clicker=clicker+1;

            }
            
            if(clicker==1)
            {
                let seconds = 10.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds)
                {
                    if(clicker==1)
                    {
                        clicker=0;
                    }
                }
            }
            if(clicker>=2)
            {
                let seconds = 30.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds)
                {
                    clicker=0;
                }
                //if(clicker) is equal to 2 and is then clicked-> bring up 4 pop up option surroundng it, asking ping user that someone is nearby, ask to message user, report as unclaimed now, X button.

            }
        } label: {
            if(clicker==0)
            {
              //  Text("Available Seat")
                Text("")
                    .frame(width:50, height:50)
                    .background(Color.green)
                    .cornerRadius(2)
            }
            else if(clicker==1)
            {
                Text("Claim Seat?")
                    .frame(width:50, height:50)
                    .background(Color.red)
                    .cornerRadius(2)
            }
            else if(clicker==2)
            {
               // Text("Seat Claimed, Click to send message to claimer")
                Text("")
                    .frame(width:50, height:50)
                    .background(Color.black)
                    .cornerRadius(2)
            }
            else if(clicker==3)
            {
                Text("Ping User?")
                    .frame(width:50, height:50)
                    .background(Color.red)
                    .cornerRadius(2)
            }
            else if(clicker==4)
            {
                Text("User has been notified")
                    .frame(width:50, height:50)
                    .background(Color.black)
                    .cornerRadius(2)
            }
            
            
            
            
        }
    }
}

struct Table: View {
    @State var clicked=false;
    var body: some View {
        Button{
             clicked.toggle();
         } label: {
             Text("Available Table")
                 .frame(width:200, height:100)
                 .background(clicked ? Color.yellow : Color.black)
                 .cornerRadius(100)

         }
    }
}

struct ExtractedView3: View {
    var body: some View {
        VStack
        {
            HStack
            {
                Seat()
                    .padding(5)
                Seat()
                    .padding(5)

                Seat()
                    .padding(1)

                
            }
            HStack
            {
                Seat()
                    .padding(5)
                Table()
                    .padding(5)

                Seat()
                    .padding(5)

                
            }
            HStack
            {
                Seat()
                Seat()
                Seat()
            }
        }
    }
}
