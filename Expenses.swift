import SwiftUI

struct Expenses: View {
    var body: some View {
        NavigationView {
            VStack {
// The goal is to create an expense tracker which will log all purchases and expenses and categorize the purchases while also adding the items bought into inventory.
                Text("Expense Tracker")
            }
            .padding(.top, 50)
        }
        .navigationBarTitle("Expenses", displayMode: .inline)

    }
}

#Preview {
    Expenses()
}
