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
            HStack{//menu
                Button(action: {
                    self.animation()
                }, label: {
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
                        Image(systemName: isClicked ? "play.circle.fill" : "stop.circle.fill")
                            .resizable()
                            .frame(width: 70, height: 70, alignment: .center)
                    }//ZStack end dial
                    .rotationEffect(isClicked ? .degrees(0) : .degrees(180))
                    .animation(.spring())
                })
                //.offset(x: -70)
                VStack(spacing: 20) {
                    ForEach(0..<100) { index in
                        Button(action: {
                            //self.animation()
                        }, label: {
                            Text( "Personal Informat")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                .lineLimit(/*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/, alignment: .leading)
                                .rotationEffect(.degrees(10))
                                //.blur(radius: isClicked ? 0 : /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        })
                    }
                }
                .padding()
                //.offset(x: -70)
            }//HStack end menu
        }//ZStack end main
    }
    func animation() {
        self.isClicked.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
