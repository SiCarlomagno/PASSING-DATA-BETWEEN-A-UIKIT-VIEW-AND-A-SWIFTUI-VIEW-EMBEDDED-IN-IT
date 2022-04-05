//
//  SwiftView.swift
//  PassingDataUIKIitSwiftUI
//
//  Created by Giacomo Marco La Montagna on 31/03/22.
//


import SwiftUI


struct SwiftUiView: View {
    
    @State var number: Int = 0
    var increase: (Int) -> Void
    var decrease: (Int) -> Void
    
    var body: some View{
        HStack{
            Button(action: {
                number -= 1
                decrease(number)
                print(number)
            }, label: {Text("-1")})
            Button(action: {
                number += 1
                increase(number)
                print(number)
            }, label: {Text("+1")})
        }.buttonStyle(.bordered)
            .scaledToFit()
 
    }
}
