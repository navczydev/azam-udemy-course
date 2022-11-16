//
//  HikingDetailView.swift
//  azam-udemy-course
//
//  Created by NAVJOT SINGH on 2022-11-15.
//

import SwiftUI

struct HikingDetailView: View {
    
    let hike:Hike
    @State private var zoom:Bool = true
    
    var body: some View {
        
            VStack{
                Image("cost-rica")
                    .resizable()
                    .cornerRadius(48)
                    .aspectRatio(contentMode: self.zoom ? .fill : .fit)
                    .frame(width: 68,height: 68)
                    .onTapGesture {
                        withAnimation{
                            self.zoom.toggle()
                        }
                    }
                
                Text(hike.name)
                    .font(.title)
                
                Text(String(format: "%.2f", hike.miles))
            }.navigationBarTitle(Text(hike.name), displayMode: .inline)
        
    }
}

struct HikingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HikingDetailView(hike: Hike.all().first!)
    }
}
