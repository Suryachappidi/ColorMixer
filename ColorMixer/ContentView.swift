//
//  ContentView.swift
//  ColorMixer
//
//  Created by Surya Chappidi on 17/08/20.
//  Copyright © 2020 Surya Chappidi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var colorR: Double
    @State var colorG: Double
    @State var colorB: Double
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: colorR, green: colorG, blue: colorB))
                .edgesIgnoringSafeArea(.all)
            VStack {
            VStack {
                ZStack {
                    Rectangle()
                        .cornerRadius(16)
                        .frame(height: 100)
                        .foregroundColor(Color(red: 1.25 - (colorR + colorG * 2.0 + colorB) / 3.0, green: 1.25 - (colorR + colorG * 2.0 + colorB) / 3.0, blue: 1.25 - (colorR + colorG * 2.0 + colorB) / 3.0, opacity: 0.5))
                    HStack {
                        Text("R: \(Int(colorR * 255.0))")
                        Text("G: \(Int(colorG * 255.0))")
                        Text("B: \(Int(colorB * 255.0))")
                    }
                    .font(Font.custom("Futura", size: 28))
                    .foregroundColor(Color(red: colorR, green: colorG, blue: colorB, opacity: 1.0))
                }
            }
            .padding(.all, 32)
            .padding(.top, 50)
            Rectangle()
                .hidden()
                
            ZStack {
                Rectangle()
                   .fill(Color("bg"))
                    .cornerRadius(16)
                    .shadow(color: Color("light"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("dark"), radius: 8, x: 8, y: 8)
                
                
                
                VStack {
                    Button(action: {}) {
                                           Image(systemName: "heart.fill")
                                            .foregroundColor(.red)
                                            .font(.system(size: 22, weight: .bold))
                                            .padding(30)
                                            .background(
                                                   Circle()
                                                    .fill(Color.black)
                                                   
                                               )
                                            
                                       }
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "r.circle")
                                .foregroundColor(Color.red.opacity(0.5))
                                .font(.system(size: 20))
                            Slider(value: $colorR, in: 0.0 ... 1.0)
                                .accentColor(Color.red.opacity(colorR))
                            Image(systemName: "r.circle.fill")
                                .foregroundColor(Color.red)
                                .font(.system(size: 25))
                        }.padding()
                        
                        HStack {
                            Image(systemName: "g.circle")
                                .foregroundColor(Color.green.opacity(0.5))
                                .font(.system(size: 20))
                            Slider(value: $colorG, in: 0.0 ... 1.0)
                                .accentColor(Color.green.opacity(colorG))
                            Image(systemName: "g.circle.fill")
                                .foregroundColor(Color.green)
                                .font(.system(size: 25))
                                .accentColor(Color.blue.opacity(colorB))
                        }.padding()
                        
                        HStack {
                            Image(systemName: "b.circle")
                                .foregroundColor(Color.blue.opacity(0.5))
                                .font(.system(size: 20))
                            Slider(value: $colorB, in: 0.0 ... 1.0)
                            Image(systemName: "b.circle.fill")
                                .foregroundColor(Color.blue)
                                .font(.system(size: 25))
                        }.padding()
                    }
                }
                
            }
            .padding(.all, 32)
            .frame(height: 300)
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(colorR: 0,colorG: 0,colorB: 0)
    }
}
