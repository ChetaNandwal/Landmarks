//
//  LankmarkRow.swift
//  Landmarks
//
//  Created by chetan nandwal on 29/08/22.
//

import Foundation
import SwiftUI

struct LandmarkRow: View
{
    var landmark: Landmark
    
    var body: some View{
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
        Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
    
}

struct Landmark_previews: PreviewProvider{
    static var landmarks = DataModel().landmarks
    static var previews: some View{
        Group{
            LandmarkRow(landmark: landmarks[0])
           
            LandmarkRow(landmark: landmarks[1])
          
            LandmarkRow(landmark: landmarks[2])
           }
    
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
