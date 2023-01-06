//
//  LandmarkList.swift
//  Landmarks
//
//  Created by chetan nandwal on 30/09/22.
//

import SwiftUI


struct LandmarkList: View{
    @EnvironmentObject var dataModel: DataModel
    @State private var showFavoritesOnly = false
    
    var filterLandmarks: [Landmark]{
        dataModel.landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View{
        NavigationView{
            List {
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favourites Only")
                }
                ForEach(filterLandmarks){landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                }label: {
                    LandmarkRow(landmark: landmark)
                }
                }
        }
            .navigationTitle("LandMarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider{
    static var previews: some View{
        LandmarkList()
            .environmentObject(DataModel())
    }
}
