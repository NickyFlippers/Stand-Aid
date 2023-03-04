//
//  ContentView.swift
//  Stand Aid
//
//  Created by Nicholas Gramenos on 3/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
            VStack{
                
                HStack{
                    DayButton(letterDay: "s")
                    DayButton(letterDay: "m")
                    DayButton(letterDay: "t")
                    DayButton(letterDay: "w")
                    DayButton(letterDay: "t")
                    DayButton(letterDay: "f")
                    DayButton(letterDay: "s")
                    
                }
                
                
                
                
                
                
                
                
            }
            
            .padding(15)
            .background {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(.gray)
                    .opacity(0.2)
            }
            
            
        }
    }

    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().preferredColorScheme(.dark)
        }
    }
