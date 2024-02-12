import SwiftUI

struct Sales: View {
    var body: some View {
        NavigationView {
            VStack {
// The goal is to have two tabs at the top, accessible by buttons, which show either the candle inventory, or inventory of supplies.
                Text("Sales Tracker")
            }
            .padding(.top, 50)
        }
        .navigationBarTitle("Sales", displayMode: .inline)

    }
}

#Preview {
    Sales()
}
