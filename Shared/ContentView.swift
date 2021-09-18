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
            ScrollView(.horizontal)
            {
                HStack
                {
                    VStack{
                     Text("Don't be Depressed")
                         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                         .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                         .colorScheme(ColorScheme.light)
                    Text("Legend")
                    Text("Available Seat:")
                    Text(" ")
                        .frame(width:20, height:20)
                        .background(Color.green)
                    Text("Taken Seat that you can notify:")
                    Text(" ")
                        .frame(width:20, height:20)
                        .background(Color.black)
                    }
        
                    ScrollView()
                    {
                        HStack{
                            ExtractedView3()
                                .padding(20)
                            ExtractedView3()
                                .padding(20)
                            ExtractedView3()
                                .padding(20)
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
                            ExtractedView3()
                                .padding(20)
                            ExtractedView3()
                                .padding(20)
                            ExtractedView3()
                                .padding(20)
                        }
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
    @State var showPopup=false;
   // @Environment(\.presentationMode) var presentationMode

    
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
                self.showPopup.toggle();

//                let seconds = 7.0
//                DispatchQueue.main.asyncAfter(deadline: .now() + seconds)
//                {
//                    clicker=0;
//                }
//            if(clicker==2)
//            {
////                if self.$showPopUp.wrappedValue {
////                        ZStack {
////                            Color.white
////                            VStack {
////                                Text("Custom Pop Up")
////                                Spacer()
////                                Button(action: {
////                                    self.showPopUp = false
////                                }, label: {
////                                    Text("Close")
////                                })
////                            }.padding()
////                        }
////                        .frame(width: 300, height: 200)
////                        .cornerRadius(20).shadow(radius: 20)
////                    }
//
//
//            }
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
                
                ZStack (){

                                    Color.black;
                                    VStack (spacing: 50) {
                                      //  HStack() {
                                            Button(action: {
                                                
                                               
                                                
                                                    clicker=2;
                                                
                                               // print("Hello");
                                                //Should actually be pingNearbyUsers()
                                            }, label: {
                                                Text("Claim Seat")
                                            }).buttonStyle(DefaultButtonStyle())
                               

                                            Button(action: {
                                                //print("close")
                                               // let second = 0.001
                                               // let second = 0.0
                                                DispatchQueue.main.asyncAfter(deadline: .now())
                                                {
                                                    clicker=0;
                                                }
                                               // self.showPopup.toggle();

                                            }, label: {
                                                Text("Close")
                                            }).buttonStyle(DefaultButtonStyle())


                                      //  }
                                        
                                    }.padding()
                                    
                                
                                }
                                .frame(width: 150, height: 150)
                                .cornerRadius(20).shadow(radius: 20)
            }
            else if(clicker==2)
            {
                Text("Seat Claimed")
                    .frame(width:50, height:50)
                    .background(Color.black)
                    .cornerRadius(2)
            }
            else if(clicker==3)
            {
                //self.showPopup.toggle();

                //if (self.$showPopUp.wrappedValue) {
                
              //  }
                
            ZStack (){

                                Color.black;
                                VStack (spacing: 50) {
                                  //  HStack() {
                                        Button(action: {
                                            clicker = 4;
                                           // print("Hello");
                                            //Should actually be pingNearbyUsers()
                                        }, label: {
                                            Text("Ping Nearby Users")
                                        }).buttonStyle(DefaultButtonStyle())
                                 //   }
                                    //Spacer()
                                  //  HStack {
                                        Button(action: {
                                           // print("What are you doing?")
                                        }, label: {
                                            Text("Message User")
                                            //Should actually be messageUser()
                                        }).buttonStyle(DefaultButtonStyle()).animation(.default)
                                  //  }
                                    //Spacer()
                                    //HStack {
                                        Button(action: {
                                            DispatchQueue.main.asyncAfter(deadline: .now())
                                            {
                                                clicker=0;
                                            }
                                        }, label: {
                                            Text("Unclaim Seat")
                                            //Should actually be unclaimSeat()
                                        }).buttonStyle(DefaultButtonStyle())
                                   // }
                                  //  Spacer()

                                  //  HStack {
                                        Button(action: {
                                            //print("close")
                                           // let second = 0.001
                                           // let second = 0.0
                                            DispatchQueue.main.asyncAfter(deadline: .now())
                                            {
                                                clicker=2;
                                            }
                                           // self.showPopup.toggle();

                                        }, label: {
                                            Text("Close")
                                        }).buttonStyle(DefaultButtonStyle())


                                  //  }
                                    
                                }.padding()
                                
                            
                            }
                            .frame(width: 175, height: 275)
                            .cornerRadius(20).shadow(radius: 20)
                    
               // Text("Seat Claimed, Click to send message to claimer")
//                Text("")
//                    .frame(width:50, height:50)
//                    .background(Color.black)
//                    .cornerRadius(2)
           // }
            }
            
            else if(clicker==4)
            {
                Text("User Notified")
                    .frame(width:50, height:50)
                    .background(Color.black)
                    .cornerRadius(2)
            }
            
            
            
            
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
