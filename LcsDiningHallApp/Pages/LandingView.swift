//
//  LandingView.swift
//  LcsDiningHallApp
//
//  Created by Luke Newbigging on 2022-02-15.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack{
            Image("LCSLogoImage")
                .resizable()
                .scaledToFit()
                .padding(10)
            
            Text("LCS Dining Hall App")
                .font(.largeTitle)
                .bold()
                .padding(10)
            HStack{
               Text("Welcome to the LCS Dining Hall App! THis App was created by students as a tool to acess the LCS meal plan and Menu. Hope you enjoy!")
            }
            Divider()
            Spacer()
            
           
        
        
        
        
        
        
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
