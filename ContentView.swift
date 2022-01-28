//
//  ContentView.swift
//  AnimationSample
//
//  Created by 高木耕平 on 2022/01/28.
//

import SwiftUI

struct ContentView: View {
    @State private var isRotatedSq = false
    @State private var isRotatedSq2 = true
    @State private var isRotatedSq3 = false
    
    
    var body: some View {
        VStack{
        Button("Start1", action: {
            self.isRotatedSq.toggle()
        })
            HStack{
                Rectangle()
                    .frame(width:100, height: 100)
                    .foregroundColor(.blue)
                    .rotationEffect(Angle.degrees(isRotatedSq ? 180 : 0))
                    .animation(Animation.easeInOut(duration: 2.0), value: isRotatedSq)
                Rectangle()
                    .frame(width:100, height: 100)
                    .foregroundColor(.red)
                    .rotationEffect(Angle.degrees(isRotatedSq ? 180 : 0))
                    .animation(Animation.easeIn(duration: 2.0), value: isRotatedSq)
                Rectangle()
                    .frame(width:100, height: 100)
                    .foregroundColor(.yellow)
                    .rotationEffect(Angle.degrees(isRotatedSq ? 180 : 0))
                    .animation(Animation.easeOut(duration: 2.0), value: isRotatedSq)
        }
        Button("Start2", action: {
            self.isRotatedSq2.toggle()
        })
            HStack{
                Rectangle()
                    .frame(width:100, height: 100)
                    .foregroundColor(.blue)
                    .rotationEffect(Angle.degrees(isRotatedSq2 ? 90 : 0))
                    .animation(Animation.linear(duration: 2.0), value: isRotatedSq2)
                Rectangle()
                    .frame(width:100, height: 100)
                    .foregroundColor(.red)
                    .scaleEffect(isRotatedSq2 ? 1.0 : 0.5)
                    .animation(Animation.linear(duration: 2.0), value: isRotatedSq2)

                Rectangle()
                    .frame(width:100, height: 100)
                    .foregroundColor(.yellow)
                    .opacity(isRotatedSq2 ? 1.0 : 0.2)
                    .animation(Animation.linear(duration: 2.0), value: isRotatedSq2)
        }
        Button("Start3", action: {
            self.isRotatedSq3.toggle()
        })
            HStack{
                Rectangle()
                    .frame(width:100, height: 100)
                    .foregroundColor(.blue)
                    .rotation3DEffect(Angle(degrees:isRotatedSq3 ? 90:0), axis: (x:10.0, y:0.0, z:0.0))
                    .animation(Animation.linear(duration: 2.0), value: isRotatedSq3)
                
                Rectangle()
                    .frame(width:100, height: 100)
                    .foregroundColor(.red)
                    .rotation3DEffect(Angle(degrees:isRotatedSq3 ? 90:0), axis: (x:0.0, y:10.0, z:0.0))
                    .animation(Animation.linear(duration: 2.0), value: isRotatedSq3)

                Rectangle()
                    .frame(width:100, height: 100)
                    .foregroundColor(.yellow)
                    .rotation3DEffect(Angle(degrees:isRotatedSq3 ? 90:0), axis: (x:0.0, y:0.0, z:10.0))
                    .animation(Animation.linear(duration: 2.0), value: isRotatedSq3)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
