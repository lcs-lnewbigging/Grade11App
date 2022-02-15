//
//  DetailView.swift
//  LcsDiningHallApp
//
//  Created by Luke Newbigging on 2021-11-29.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView{
            
            Text("Lunch")
                .bold()
                .font(.title)
           
            VStack{
                
                
                HStack{
                    PhotoCaptionView(imageName: "grilledCheese",
                                     caption: "Grilled Cheese is a popular toast and cheese sand which, its is made of bread and cheese",
                                     allergens: "Allengens: Tree Nuts, Dairy, Penuts")
                    }
                
                Text("Description:")
                    .bold()
                    .font(.title3)
                    .padding(10)
                
                Text("A toasted sandwich, grilled cheese sandwich, cheese toastie, or grilled cheese is a hot sandwich (toastie) made with one or more varieties of cheese (a cheese sandwich) on bread. It is typically prepared by heating one or more slices of cheese between slices of bread, with a cooking fat such as butter, on a frying pan, griddle, or sandwich toaster, until the bread browns and the cheese melts. A grilled cheese may contain ingredients besides the bread and cheese, as long as the latter is the main focus.")
                    .padding(10)
            }
        }
        
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        DetailView()
                .navigationBarHidden(true)
        }
    }
}
