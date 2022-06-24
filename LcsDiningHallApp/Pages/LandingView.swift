//
//  LandingView.swift
//  LcsDiningHallApp
//
//  Created by Luke Newbigging on 2022-02-15.
//

import SwiftUI

struct LandingView: View {
    
//    let currentMenu: Menu
    
    @State var menusToShow: [Menu] = []
    
    
    var body: some View {
        NavigationView {
            
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
                    Text("Welcome to the LCS Dining Hall App! This App was created by students as a tool to acess the LCS meal plan and Menu. Hope you enjoy!")
                }
                Divider()
                
                Text("These Are Today's Meals:")
                    .font(.title2)
                    .bold()
                Spacer()
                
                
                ZStack {
                    
                    // Shows list of announcements, when there are some to show
                    List(menusToShow) { currentListItem in
                        
                        NavigationLink(destination: {
                            
                        }, label: {
                            ListItemView(currentMenu: currentListItem)
                        })
                        
                    }
                    
                    // Show a message when there are no results yet
                    VStack {
                        Spacer()
                        
                        Text("Loading...")
                            .font(.title)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                    }
                    .opacity(menusToShow.isEmpty ? 1.0 : 0.0)
                    
                }
                .navigationTitle("The Meals Today")
                .navigationBarTitleDisplayMode(.large)
                // Runs once when view is loaded
                .task {
                    
                    await fetchResults()
                    
                }
                
            }
        }
    }
            //MARK: Functions
            
            
            func fetchResults() async {
                
                // Set the address of the JSON endpoint
                let url = URL(string: Menus.endpoint)!
                
                // Configure a URLRequest instance
                // Defines what type of request will be sent to the address noted above
                var request = URLRequest(url: url)
                request.setValue("application/json",
                                 forHTTPHeaderField: "Accept")
                request.httpMethod = "GET"  // Getting data from the web server...
                
                // Start a URL session to interact with the endpoint
                let urlSession = URLSession.shared
                
                // Fetch the results of this search
                do {
                    // Get the raw data from the endpoint
                    let (data, _) = try await urlSession.data(for: request)
                    
                    // DEBUG: See what raw JSON data was returned from the server
                    print(String(data: data, encoding: .utf8)!)
                    
                    // Attempt to decode and return the object all the rows of the spreadsheet
                    // NOTE: We decode to Announcements.self since the endpoint
                    //       returns a single JSON object
                    let decodedMenus = try JSONDecoder().decode(Menus.self, from: data)
                    
                    // Now, we access the rows of the spreadsheet
                    menusToShow = decodedMenus.list
                    
                } catch {
                    
                    // Report about what happened
                    print("Could not retrieve / decode JSON from endpoint.")
                    print(error)
                    
                }
                
            }
            

            
            
            
        
    
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandingView(menusToShow: currentMenu)
        }
    }
}
