//
//  MainJoshView.swift
//  JoshuaThompsonApp
//
//  Created by Cesar Pacheco on 11/19/21.
//

import SwiftUI

struct MainJoshView: View {
    var body: some View {
        NavigationView {
            ZStack {
          
                VStack(alignment:.leading) {
                           Spacer()
                        .frame(height: 60, alignment: .bottom)
                            Text("Height: 5'9")
                        .padding(.top)
                        .foregroundColor(Color.black)
                            .padding(.bottom)
                            Text("Eye Color: Brown")
                        .foregroundColor(Color.black)
                                .padding(.bottom)
                            Text("Fav Color: Blue")
                        .foregroundColor(Color.black)
                                .padding(.bottom)
                            Text("Fav Food: Hot Dogs")
                        .foregroundColor(Color.black)
                                .padding(.bottom)
                            Spacer()
                        .frame(height: 150, alignment: .top)
                            Image("OhNo")
                                .resizable()
                                .padding()
                                .scaledToFit()
                                .frame(width: 400, height: 400)
                                

                }
            }
            .navigationTitle("The Josh Thompson")
        }
    }
}

struct MainJoshView_Previews: PreviewProvider {
    static var previews: some View {
        MainJoshView()
    }
}
