import SwiftUI
struct ProductListItem: View {
    var item: InventoryItem
    
    var body: some View {
        
        HStack {
//            Image(item.image)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .clipShape(.circle)
//                .frame(width: 75, height: 75)
//                .padding(.horizontal, 10)
            VStack(alignment: .leading) {
                HStack {
                    Text(item.type)
                    Text("(\(item.size) oz)")
                }
                .font(.headline)
                
                Spacer()
                Text(item.scent)
            }
                .padding(.leading, 20)
            Spacer()
            VStack {
                Text("\(item.stock)")
                    .padding(.trailing, 20)
            }
            
        }
        .frame(idealWidth: .infinity, maxHeight: 40)
        .padding(.vertical, 6)
    }
}

#Preview {
    ProductListItem(item: InventoryItem(image: "16ozSalsa",type: "Salsa Jar", size: 16, scent: "Coastal Trail", stock: 0))
}
