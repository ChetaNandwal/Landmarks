//
//  circleimage.swift
//  Landmarks
//
//  Created by chetan nandwal on 20/08/22.
//

import SwiftUI

struct circleimage: View {
    var image: Image
    var body: some View {
        image
        Image("turtlerock")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white,lineWidth: 4)
            }
            .shadow( radius: 7)
    }
}

struct circleimage_Previews: PreviewProvider {
    static var previews: some View {
        circleimage(image: Image("turtlerock"))
    }
}
