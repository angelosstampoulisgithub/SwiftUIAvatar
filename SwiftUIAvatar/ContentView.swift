//
//  ContentView.swift
//  SwiftUIAvatar
//
//  Created by Angelos Staboulis on 8/2/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Avatar( image:nil,
                firstName: "Theodoros",
                lastName:"Staboulis",
                placeHolderImage: "",
                size: 250,
                roundness: 2,
                background: .clear,
                placeholder:false )
        Avatar( image:Image("me"),
                firstName: "Angelos",
                lastName:"Staboulis", 
                placeHolderImage: "",
                size: 250,
                roundness: 2,
                background: .clear,
                placeholder:false )
        Avatar( image:nil,
                firstName: "",
                lastName:"",
                placeHolderImage: "person.fill",
                size: 250,
                roundness: 2,
                background: .clear,
                placeholder:true )
    }
}

#Preview {
    ContentView()
}
