//
//  ContentView.swift
//  myDiary
//
//  Created by Yasr Alajmi on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    let Colors = [Color.indigo , Color.yellow , Color.blue, Color.green]
    
   @State var Note = ""
    
    @State var Select : Color = Color.indigo
    var body: some View {
       
            
            NavigationView{
                
                
                    VStack{
                    Color(.gray) .opacity(0.8)
                        .ignoresSafeArea()
                
                        .navigationTitle("دفتر اليوميات📔")
                    
                        
                    
                    Text("اختر اللون المفضل")
                        .font(.system(size: 30))
                        .padding()

                  
                        HStack{
                            ForEach(Colors, id: \.self) { color in
                                Circle()
                                    .fill(color)
                                .frame(width: 90, height: 90)
                                .onTapGesture {
                                    Select = color 
                                }
                                }
                            
                                

                            
                            } // ForEach نهاية
                            
                        Text("ماذا تريد أن تكتب📝 ")
                            .font(.system(size: 20))
                            .padding()
                            .foregroundColor(.black)

                        TextField("اكتب هنا", text: $Note)
                                .frame(width:300, height: 30)
                                .padding()
                                .background(.blue) .opacity(0.8)
                                .frame(width:320, height: 40)
                                .background(.black) .opacity(0.8)
                                .cornerRadius(10)
                        Spacer()
                            .frame(width: 90, height: 200)
                        NavigationLink(destination: YourNote(YourColors: Select, YourBook: Note)){
                            Text("حفظ")
                                .font(.system(size: 25))
                                .frame(width: 290, height: 60)
                                .background(.gray) .opacity(0.7)
                                .cornerRadius(20)
                            
                        }
                        
                    }// HStack نهاية
                
                
                        
                
                    
                
                } //VStack نهاية
                
            } // NavigationView نهاية
            
            
            
        }





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
