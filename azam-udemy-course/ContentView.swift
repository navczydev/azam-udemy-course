//
//  ContentView.swift
//  azam-udemy-course
//
//  Created by NAVJOT SINGH on 2022-11-14.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
       
        NavigationView{
            VStack {
                Image("cost-rica")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                    .cornerRadius(48)
                    .clipShape(Circle())
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                //Spacer(minLength: CGFloat(2.0))
                
                Text("Hello, world!")
                    .foregroundColor(.orange)
                
                // list & navigation
                List(self.hikes, id: \.name) { hike in
                    NavigationLink(destination: HikingDetailView(hike: hike)){
                        HikeCell(hike: hike)
                    }
                }.listStyle(.plain)
                
                
                
            }
            .navigationTitle("Hikings")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    let hike:Hike
    
    var body: some View {
        HStack{
            Image("cost-rica")
                .resizable()
                .frame(width: 60,height: 58)
                .cornerRadius(16)
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading){
                Text("Hike name \(hike.name)").font(.title)
                Text(String(format: "%.2f", hike.miles))
            }
        }
    }
}
