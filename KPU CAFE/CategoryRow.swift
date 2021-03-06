/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a scrollable list of landmarks.
*/

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]

    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 10)
                .padding(.bottom, 0)
               
            
               
            

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) {
                        landmark in
                        NavigationLink(destination: LandmarkDetail(landmark: landmark))
                        {CategoryItem(landmark: landmark)
                        }
                    }
                    Text("see more>")
                       
                       .padding(.leading, 20)
                       .padding(.top, 45)
                       .padding(.bottom,
                                0)
                       .font(.custom("Helvetica Neue", size: 12))
                }
            }
            .frame(height: 125)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(4))
        )
    }
}
