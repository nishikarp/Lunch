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
    @State var  someArray : [Int] =
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
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
                  NavigationLink(destination: EntranceView(a:1, b:2, c:3, d:4, e:5, f:6, g:7, h:8, i:9, j:10, k:11, l:12, m:13, n:14, o:15, p:16, q:17, r:18, s:19, t:20, u:21, v:22, w:23, x:24, y:25, z:26, aa:27, ab:28, ac:29, ad:30, someArr: $someArray  ))
                        { Text("Entrance Tables") }
                        .padding(20)
                    NavigationLink(destination: PairTableView(a:31, b:32, c:33, d:34, e:35, f:36, g:37, h:38, i:39, j:40, k:41, l:42, someArr: $someArray ))
                        { Text("Dessert Tables") }
                        .padding(20)
                    NavigationLink(destination: DrinkView(a:43, b:44, c:45, d:46, e:47, f:48, g:49, h:50, i:51, j:52, k:53, l:54, m:55, n:56, o:57, p:58, q:59, r:60, s:61, t:62, u:63, v:64, w:65, x:66, y:67, z:68, aa:69, ab:70, ac:71, ad:72, someArr: $someArray ))
                        { Text("Drink Tables") }
                        .padding(20)
                  NavigationLink(destination: PortraitWallView(a:73, b:74, c:75, d:76, e:77, f:78, g:79, h:80, i:81, j:82, k:83, l:84, m:85, n:86, o:87, p:88, q:89, r:90, s:91, t:92, u:93, someArr: $someArray ))
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
    
   var a:Int
   var b:Int
   var c:Int
   var d:Int
   var e:Int
   var f:Int
   var g:Int
   var h:Int
   var i:Int
   var j:Int
   var k:Int
   var l:Int
   var m:Int
   var n:Int
   var o:Int
   var p:Int
   var q:Int
   var r:Int
   var s:Int
   var t:Int
   var u:Int
   @Binding var someArr : [Int];
    var body: some View {
        ScrollView{
            
         ExtractedView3(a:a, b:b, c:c,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:d, b:e, c:f,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:g, b:h, c:i,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:j, b:k, c:l,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:m, b:n, c:o,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:p, b:q, c:r,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:s, b:t, c:u,someArr:$someArr)
                .padding(20)
        
        }
    }
}
 
struct DrinkView : View {
   var a:Int
   var b:Int
   var c:Int
   var d:Int
   var e:Int
   var f:Int
   var g:Int
   var h:Int
   var i:Int
   var j:Int
   var k:Int
   var l:Int
   var m:Int
   var n:Int
   var o:Int
   var p:Int
   var q:Int
   var r:Int
   var s:Int
   var t:Int
   var u:Int
   var v:Int
   var w:Int
   var x:Int
   var y:Int
   var z:Int
   var aa:Int
   var ab:Int
   var ac:Int
   var ad:Int

   @Binding var someArr : [Int];
    
    var body: some View {
        ScrollView {
         ExtractedView3(a:a, b:b, c:c,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:d, b:e, c:f,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:g, b:h, c:i,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:j, b:k, c:l,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:m, b:n, c:o,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:p, b:q, c:r,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:s, b:t, c:u,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:v, b:w, c:x,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:y, b:z, c:aa,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:ab, b:ac, c:ad,someArr:$someArr)
                .padding(20)
        }
    }
}
 
struct PairTableView : View {
   
   var a:Int
   var b:Int
   var c:Int
   var d:Int
   var e:Int
   var f:Int
   var g:Int
   var h:Int
   var i:Int
   var j:Int
   var k:Int
   var l:Int

   @Binding var someArr : [Int];
   var body: some View {
        ScrollView {
         ExtractedView2(a:a, b:b, someArr: $someArr)
        .padding(20)
         ExtractedView2(a:c, b:d, someArr: $someArr)
        .padding(20)
         ExtractedView2(a:e, b:f, someArr: $someArr)
        .padding(20)
         ExtractedView2(a:g, b:h, someArr: $someArr)
        .padding(20)
         ExtractedView2(a:i, b:j, someArr: $someArr)
        .padding(20)
         ExtractedView2(a:k, b:l, someArr: $someArr)
        .padding(20)
        }
    }
}
 
struct EntranceView : View {
   
   var a:Int
   var b:Int
   var c:Int
   var d:Int
   var e:Int
   var f:Int
   var g:Int
   var h:Int
   var i:Int
   var j:Int
   var k:Int
   var l:Int
   var m:Int
   var n:Int
   var o:Int
   var p:Int
   var q:Int
   var r:Int
   var s:Int
   var t:Int
   var u:Int
   var v:Int
   var w:Int
   var x:Int
   var y:Int
   var z:Int
   var aa:Int
   var ab:Int
   var ac:Int
   var ad:Int

   @Binding var someArr : [Int];
    var body: some View {
        ScrollView {
         ExtractedView3(a:a, b:b, c:c,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:d, b:e, c:f,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:g, b:h, c:i,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:j, b:k, c:l,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:m, b:n, c:o,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:p, b:q, c:r,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:s, b:t, c:u,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:v, b:w, c:x,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:y, b:z, c:aa,someArr:$someArr)
                .padding(20)
         ExtractedView3(a:ab, b:ac, c:ad,someArr:$someArr)
                .padding(20)
        }
        
    }
}
 
 
 
 
struct Seat: View {
    
   var seatId:Int;
   @Binding var someInts: [Int];
  // @State var clicker:Int;
   @State var showPopup=false;
   @State var showMessageButton=false;
   // @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        Button{
            if(someInts[seatId]==0)
            {
               print(seatId);
               someInts[seatId]=someInts[seatId]+1;

            }
            
            else if(someInts[seatId]==1)
            {
                let seconds = 200.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds)
                {
                    if(someInts[seatId]==1)
                    {
                     someInts[seatId]=0;
                    }
                }
            }
            else if(someInts[seatId]>=2)
            {
                if(someInts[seatId]<4)
                {
                  someInts[seatId]=someInts[seatId]+1;
                }
               self.showPopup.toggle();

                //if(clicker) is equal to 2 and is then clicked-> bring up 4 pop up option surroundng it, asking ping user that someone is nearby, ask to message user, report as unclaimed now, X button.
            }
        } label: {
            if(someInts[seatId]==0)
            {
              //  Text("Available Seat")
                Text("")
                    .frame(width:50, height:50)
                    .background(Color.green)
                    .cornerRadius(2)
            }
            else if(someInts[seatId]==1)
            {

                
                ZStack (){

                                    Color.black;
                                    VStack (spacing: 50) {
                                      //  HStack() {
                                            Button(action: {
                                                
                                               
                                                
                                             someInts[seatId]=2;

                                                
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
                                                   someInts[seatId]=0;

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
            else if(someInts[seatId]==2)
            {
                Text("Claimed")
                    .frame(width:50, height:50)
                    .font(.system(size: 12, weight: .light, design: .default))
                    .background(Color.black)
                    .foregroundColor(Color.white)
                    .cornerRadius(2)
                
                
                
                
            }
            else if(someInts[seatId]==3)
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
                                             someInts[seatId]=0;

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
                                             someInts[seatId]=0;

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
            
            else if(someInts[seatId]==4)
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
   var a:Int;
   var b:Int;
   @Binding var someArr : [Int];
    var body: some View{
        VStack {
            HStack {
               Seat(seatId:a, someInts:$someArr)
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
               Seat(seatId:b, someInts:$someArr)
            }
        }
    }
}




struct ExtractedView3: View {
   var a:Int;
   var b:Int;
   var c:Int;
   @Binding var someArr : [Int];
    var body: some View {
        VStack
        {
            HStack
            {
               Seat(seatId:a, someInts:$someArr)
                FillerSeat()
               Seat(seatId:b, someInts:$someArr)

            }
            HStack
            {
               
                Table()
                     .padding(5)
                
            }
            HStack
            {
                
               Seat(seatId:c, someInts:$someArr)

            }
        }
    }
}
