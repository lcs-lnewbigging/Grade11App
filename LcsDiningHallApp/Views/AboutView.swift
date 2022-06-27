//
//  LandingView.swift
//  LcsDiningHallApp
//
//  Created by Luke Newbigging on 2022-02-15.
//

import SwiftUI

struct AboutView: View {
    
    //    let currentMenu: Menu
    
    @State var fetchedMenus: [Menu] = []
    
    
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
                Text("Welcome to the LCS Dining Hall App! This App was created by students Luke Newbigging and Nathan Smith as a tool to easily access the LCS Dining Hall Daily Menu. We hope you enjoy!")
                    .padding(.horizontal)
            }
          
            Divider()
            
            // Pictures of Nathan and Luke
            HStack (spacing: 30){
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 160, height: 200, alignment: .center)
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 160, height: 200, alignment: .center)
            }
            .padding()

            
            Spacer()
            
            /// --------------------------------------
            /// Thinking of making the landing page the about page
            
            //            Text("These Are Today's Meals:")
            //                .font(.title2)
            //                .bold()
            //            Spacer()
            //
            //
            //            ZStack {
            //
            //                // Shows list of announcements, when there are some to show
            //                List(fetchedMenus) { currentListItem in
            //
            //                    NavigationLink(destination: {
            //
            //                    }, label: {
            //                        ListItemView(currentMenu: currentListItem)
            //                    })
            //
            //                }
            
            // Show a message when there are no results yet
            //                VStack {
            //                    Spacer()
            //
            //                    Text("Loading...")
            //                        .font(.title)
            //                        .foregroundColor(.secondary)
            //
            //                    Spacer()
            //                }
            //                .opacity(fetchedMenus.isEmpty ? 1.0 : 0.0)
            /// -------------------------------------------
        }
        .navigationBarHidden(true)
        .task {
            await fetchResults()
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
            fetchedMenus = decodedMenus.list
            
        } catch {
            
            // Report about what happened
            print("Could not retrieve / decode JSON from endpoint.")
            print(error)
            
        }
        
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AboutView(fetchedMenus: testList)
        }
    }
}
