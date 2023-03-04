//
//  DayButton.swift
//  Stand Aid
//
//  Created by Nicholas Gramenos on 3/4/23.
//

import SwiftUI

struct DayButton: View {
    @State var daySelected = false
    @State var colorLetterDay = Color.blue
    var letterDay = "s"
    var fontSize = 50
    var body: some View {
        
        Button ( action: {
            daySelected.toggle()
            
            if daySelected{
                colorLetterDay = .gray
                
            } else {
                colorLetterDay = .blue
                
                
            }
        })
        {

            if daySelected{
                Image(systemName: "\(letterDay).circle.fill")
                    .font(.system(size: 35))
                    
                
                
                
            }
            else{
                
                Image(systemName: "\(letterDay).circle").tint(.gray)
                    .font(.system(size: 35))
                    
                
            }
        }
    }
}


struct DayButton_Previews: PreviewProvider {
    static var previews: some View {
        DayButton().preferredColorScheme(.dark)
    }
}
