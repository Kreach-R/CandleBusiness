import SwiftUI

struct Recipes: View {
    var wickSize = "ECO8"
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
// The goal is to
                Text("Recipe:")
                //TextField with available recipes
                
                Text("# of candles:")
                //TextField with number of candles
                
                Text("Container Opening:")
                //TextField with list of available containers, pulled from inventory
                
                Text("Recommended wick size: \(wickSize)") //This will return the wick size you should use
            }
            .padding(.top, 50)
        }
        .navigationBarTitle("Recipes", displayMode: .inline)
    }
}

#Preview {
    Recipes()
}
