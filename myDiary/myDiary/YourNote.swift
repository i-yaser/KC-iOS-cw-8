//
//  YourNote.swift
//  myDiary
//
//  Created by Yasr Alajmi on 21/08/2022.
//

import SwiftUI

struct YourNote: View {
    let YourColors : Color
    let YourBook : String
    var body: some View {
        ZStack{
            YourColors.ignoresSafeArea()
            
            VStack{
                Text(YourBook)
            }
        }
    }
}

struct YourNote_Previews: PreviewProvider {
    static var previews: some View {
        YourNote(YourColors: Color.red, YourBook: "yaser")
            .previewDevice("iPhone 11")
}
}
