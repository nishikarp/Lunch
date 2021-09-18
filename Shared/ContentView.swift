//
//  ContentView.swift
//  Shared
//
//  Created by Nishikar Paruchuri, Akhil Deo, Miseok Kim, Rosa Gao on 9/18/21.
//
 
import SwiftUI
 
struct ContentView: View {
    @State private var clicked=false;
    //@State private var button1: Bool = false
   // @State private var button2 = false;
 //   @State private var button3 = false;
//    @State private var button4 = false;
 
    var body: some View {
            NavigationView{
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea(.all)
                VStack{
                    Text("JHU")
                      .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                      .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                      .colorScheme(ColorScheme.light)
                      .padding(10)
                    Text("Fresh Food Cafe")
                      .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                      .font(.title)
                      .colorScheme(ColorScheme.light)
                      .padding(20)
                    NavigationLink(destination: EntranceView())
                        { Text("Entrance Tables") }
                        .padding(20)
                    NavigationLink(destination: PairTableView())
                        { Text("Dessert Tables") }
                        .padding(20)
                    NavigationLink(destination: DrinkView())
                        { Text("Drink Tables") }
                        .padding(20)
                    NavigationLink(destination: PortraitWallView())
                        { Text("Cereal Tables") }
                        .padding(20)
                    Image("FFCLayout").resizable().scaledToFit()
                }
                }
            }
                        
        //                        VStack{
        //                        Text("Legend")
        //                            .fontWeight(.bold)
        //                            .padding(5)
        //                        Text("Available Seat:")
        //                            .padding(5)
        //                        Text(" ")
        //                            .frame(width:20, height:20)
        //                            .background(Color.green)
        //                            .padding(5)
        //                        Text("Taken Seat that you can notify:")
        //                            .padding(5)
        //                        Text(" ")
        //                            .frame(width:20, height:20)
        //                            .background(Color.black)
        //                        }
                                
                            
    }
       
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
 
struct PortraitWallView : View {
    
    
    var body: some View {
        ScrollView{
            
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
            ExtractedView3()
                .padding(20)
        
        }
    }
}
 
struct DrinkView : View {
    
    var body: some View {
        ScrollView {
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
    ExtractedView3()
        .padding(20)
    ExtractedView3()
        .padding(20)
    ExtractedView3()
        .padding(20)
        }
    }
}
 
struct PairTableView : View {
   
    var body: some View {
        ScrollView {
    ExtractedView2()
        .padding(20)
    ExtractedView2()
        .padding(20)
    ExtractedView2()
        .padding(20)
    ExtractedView2()
        .padding(20)
    ExtractedView2()
        .padding(20)
    ExtractedView2()
        .padding(20)
        }
    }
}
 
struct EntranceView : View {
   
    var body: some View {
        ScrollView {
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
    ExtractedView3()
        .padding(20)
    ExtractedView3()
        .padding(20)
    ExtractedView3()
        .padding(20)
        }
        
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
                
//                 Text("Claim Seat?")
//                     .frame(width:50, height:50)
//                     .background(Color.red)
//                     .cornerRadius(2)
                
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
                Text("Claimed")
                    .frame(width:50, height:50)
                    .font(.system(size: 12, weight: .light, design: .default))
                    .background(Color.black)
                    .foregroundColor(Color.white)
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
                Text("Users Notified")
                    .frame(width:50, height:50)
                    .font(.system(size: 12, weight: .light, design: .default))
                    .background(Color.black)
                    .foregroundColor(Color.white)
                    .cornerRadius(2)
                    .multilineTextAlignment(.center)
            }
            
            
            
            
        }
    }
}
 
struct FillerSeat: View {
    var body: some View {
        Rectangle()
        .fill(Color.white)
        .frame(width:50, height:50)
        .cornerRadius(2)
    }
    
}
 
struct Table: View {
    @State var clicked=false;
    var body: some View {
        Button{
             clicked.toggle();
         } label: {
             Text("Table")
                 .frame(width:200, height:50)
                 .background(Color.gray)
                .foregroundColor(Color.white)
                 .cornerRadius(100)
 
         }
    }
}
 
struct ExtractedView2: View {
    var body: some View{
        VStack {
            HStack {
                Seat()
                FillerSeat()
                FillerSeat()
                
            }
            HStack {
                Table()
                    .padding(5)
                
            }
            HStack {
                FillerSeat()
                FillerSeat()
                Seat()
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
                FillerSeat()
                Seat()
                    
            }
            HStack
            {
               
                Table()
                     .padding(5)
                
            }
            HStack
            {
                
                Seat()
            
            }
        }
    }
}
 


