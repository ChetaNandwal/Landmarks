//
//  ContentView.swift
//  Landmarks
//
//  Created by chetan nandwal on 18/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
           LandmarkList()
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
