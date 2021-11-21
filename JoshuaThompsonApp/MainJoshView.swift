//
//  MainJoshView.swift
//  JoshuaThompsonApp
//
//  Created by Cesar Pacheco on 11/19/21.
//

import SwiftUI

struct MainJoshView: View {
    var body: some View {
       
        
           
    
               
            VStack(alignment:.leading) {
                    Spacer()
                    .frame(height: 100, alignment: .top)
                    Text("Height: 5'9")
                    .padding(.bottom)
                    Text("Eye Color: Brown")
                        .padding(.bottom)
                    Text("Fav Color: Blue")
                        .padding(.bottom)
                    Text("Fav Food: Hot Dogs")
                        .padding(.bottom)
                    Spacer()
                        .frame(height: 120)
                    Image("OhNo")
                        .resizable()
                        .padding()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
               
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        .ignoresSafeArea()

        }
    }
}

struct MainJoshView_Previews: PreviewProvider {
    static var previews: some View {
        MainJoshView()
    }
}
