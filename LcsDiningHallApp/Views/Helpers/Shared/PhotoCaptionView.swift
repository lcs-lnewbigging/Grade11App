//
//  PhotoCaptionView.swift
//  LcsDiningHallApp
//
//  Created by Luke Newbigging on 2021-11-29.
//

import SwiftUI

struct PhotoCaptionView: View{
    
    let imageName: String
    let caption: String
    let allergens: String
    
    
    
    //Computed Property
    var body: some View {
        VStack(alignment:.leading){
            
            Image(imageName)
                .resizable()
                .scaledToFit()
            
            VStack(alignment: .leading) {

                Text(caption)
                    .font(.caption)
                    .bold()
                Text(allergens)
                    .font(.caption)
                    .bold()
               
                
            }
            .padding(.horizontal)
        }
    }
}
struct PhotoCaptionView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCaptionView(imageName: "grilledCheese",
                         caption: "Grilled Cheese is a popular toast and cheese sand which, its is made of bread and cheese"
                         ,
                         allergens: "Allengens: Tree Nuts, Dairy, Penuts")
                         
    }
}

