//
//  ContentView.swift
//  personal file
//
//  Created by ryo fujimura on 3/18/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isClicked : Bool = false
    var body: some View {
        ZStack{//main
            Color(red: 150 / 255, green: 160 / 255, blue: 160 / 255)
                .ignoresSafeArea()
            VStack{//home
                Spacer()
                Text("Personal File")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.black)
                Spacer()
                Text("text here")
                    .padding(30.0)
                    .border(Color.black, width: 10)
                    .contentShape(Circle())
                HStack{//menu
                    ZStack{//dial
                        Circle()
                            .frame(width: 180, height: 180)
                            .foregroundColor(Color(red: 160 / 255, green: 160 / 255, blue: 160 / 255))
                            .shadow(radius: 10)
                        Circle()
                            .frame(width: 250, height: 250)
                            .foregroundColor(Color.black)
                            .shadow(radius: 5)
                            .opacity(0.2)
                        Button(action: {
                            self.animationlock()
                        }, label: {
                            Image(systemName: isClicked ? "play.circle.fill" : "stop.circle.fill")
                                .resizable()
                                .frame(width: 70, height: 70, alignment: .center)
                                .rotationEffect(isClicked ? .degrees(0) : .degrees(180))
                        })
                       
                    }//ZStack end dial
                    .animation(.spring())
                    
                    //.offset(x: -70)
                    
                    VStack{
                        ScrollView(.vertical){
                            ForEach(0..<20) { index in
                                Button(action: {
                                    //self.animationblur()
                                }, label: {
                                    Text( "personal")
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                        .lineLimit(/*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/, alignment: .leading)
                                        .rotationEffect(.degrees(0))
                                        .padding(.vertical, 5.0)
                                    //.blur(radius: isClicked ? 0 : /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                        .animation(.default)
                                })
                            }
                        }
                    }//end personal button
                    .padding()
                }//end menu
                
            }//end home
        }//end main
    }
    func animationlock() {
        self.isClicked.toggle()
    }
    func animationblur() {
        self.isClicked.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
