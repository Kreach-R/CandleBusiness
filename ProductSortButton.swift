import SwiftUI

struct ProductSortButton: View {
    @State private var productButtonSelected: Bool = true

    var buttonAction: () -> Void
    var buttonText: String
    var productButtonBG: Color {
        productButtonSelected ? .blue.opacity(0.45) : .gray.opacity(0.45)
    }
    var productButtonBorder: Color {
        productButtonSelected ? .blue.opacity(0.35) : .gray.opacity(0.35)
    }
    
    var body: some View {
        Button {
            productButtonSelected.toggle()
        } label: {
            Text(buttonText)
        }
        .frame(width: 150, height: 50)
        .background(productButtonBG)
        .border(productButtonBorder)
        .cornerRadius(10)
        .foregroundColor(.white)
        .font(.headline)
        
    }
}

#Preview {
    ProductSortButton(buttonAction: {}, buttonText: "Products")
}
