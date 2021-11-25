//
//  DedicatedPuffSection.swift
//  JoshuaThompsonApp
//
//  Created by Cesar Pacheco on 11/19/21.
//

import SwiftUI

struct DedicatedPuffSection: View {
    var body: some View {
        Image("Puffback")
            .resizable()
            .scaledToFit()
            .frame(width: 500, height: 900)
            .ignoresSafeArea()
           
        
    }
}

struct DedicatedPuffSection_Previews: PreviewProvider {
    static var previews: some View {
        DedicatedPuffSection()
    }
}
