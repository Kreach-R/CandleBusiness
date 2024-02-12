import SwiftUI

struct COGS: View {
    var body: some View {
        NavigationView {
            VStack {
// The goal is to have two tabs at the top, accessible by buttons, which show either the candle inventory, or inventory of supplies.
                Text("COGS/Pricing")
            }
            .padding(.top, 50)
        }
        .navigationBarTitle("COGS/Pricing", displayMode: .inline)
    }
}

#Preview {
    COGS()
}
