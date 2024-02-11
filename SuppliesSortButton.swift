import SwiftUI

struct SuppliesSortButton: View {
    @State var suppliesButtonSelected: Bool = false

    var buttonAction: () -> Void
    var buttonText: String
    var suppliesButtonBG: Color {
        suppliesButtonSelected ? .blue.opacity(0.45) : .gray.opacity(0.45)
    }
    var suppliesButtonBorder: Color {
        suppliesButtonSelected ? .blue.opacity(0.35) : .gray.opacity(0.35)
    }
    
    var body: some View {
        Button {
            suppliesButtonSelected.toggle()
        } label: {
            Text(buttonText)
        }
        .frame(width: 150, height: 50)
        .background(suppliesButtonBG)
        .border(suppliesButtonBorder)
        .cornerRadius(10)
        .foregroundColor(.white)
        .font(.headline)
        
    }
}

#Preview {
    SuppliesSortButton(buttonAction: { }, buttonText: "Supplies")
}
