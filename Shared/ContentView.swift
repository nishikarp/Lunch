//
//  ContentView.swift
//  Shared
//
//  Created by Nishikar Paruchuri, Akhil Deo, Miseok Kim, Rosa Gao on 9/17/21 - 9/19/21.
//
 
import UIKit
import SwiftUI
import WebKit
 
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
                      .padding(10)
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
                  NavigationLink(destination: SwiftUIWebView(url: URL(string: "https://c203-128-220-159-214.ngrok.io/chat" ))
 )
                      { Text("Chat Messaging") }
                  .padding(20)
                  
                    /*Button {
                        //let application = UIApplication.shared
                        //let websiteURL = URL(string: "https://c203-128-220-159-214.ngrok.io/chat")!
                        //application.open(websiteURL)
                     NavigationView {
                        SwiftUIWebView(url: URL(string: "https://c203-128-220-159-214.ngrok.io/chat" ))
                           .navigationTitle("Messages")
                     }
                    } label: {
                        Text("Chat Messaging");
                    }
                    .padding(20)*/
//                    NavigationLink(destination: ChatMessageView())
//                        { Text("Chat Messaging")}
//                        .padding(20)
                    Image("FFCLayout").resizable().scaledToFit()
                    
                    
                }
                }
            }
                
                                
                            
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
    @State var showMessageButton=false;
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
                
            ZStack {

                                Color.black;
                                VStack (spacing: 50) {
                                  //  HStack() {
//                                        Button(action: {
//                                            clicker = 4;
//                                           // print("Hello");
//                                            //Should actually be pingNearbyUsers()
//                                        }, label: {
//                                            Text("Ping Nearby Users")
//                                        }).buttonStyle(DefaultButtonStyle())
                                 //   }
                                    //Spacer()
                                  //  HStack {
                                    Button {
                                    //   NavigationView()
                                      // {
                                       //    SwiftUIWebView(url: URL(string: "https://c203-128-220-159-214.ngrok.io/chat" ))
                                       //}
                                    //   SwiftUIWebView(url: URL(string: "https://c203-128-220-159-214.ngrok.io/chat" ))
                                       let application = UIApplication.shared
                                                               let websiteURL = URL(string: "https://c203-128-220-159-214.ngrok.io/chat")!
                                                               application.open(websiteURL)
                                    } label: {
                                        Text("Message Users");
                                    }.buttonStyle(DefaultButtonStyle()).animation(.default)
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
                            .frame(width: 185, height: 200)
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
struct SwiftUIWebView: UIViewRepresentable
{
    
    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()

        config.defaultWebpagePreferences = prefs

        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context)
    {
        guard let myURL=url else {
            return
        }
        let request = URLRequest(url:myURL)
            uiView.load(request)
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
