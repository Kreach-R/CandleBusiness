import SwiftUI

struct Inventory: View {
    @State var inventoryItems: [InventoryItem] = [InventoryItem]()
    
    @State var productButtonSelected = true
    @State var suppliesButtonSelected = false
    
    var dataService = DataService()
    var wicks = 200
    var containers = 24
    var lids = 24
    var wax = 20
    var scents = 64

    
    var body: some View {
        NavigationView {
            VStack {
// The goal is to have two tabs at the top, accessible by buttons, which show either the candle inventory, or inventory of supplies.
                //Add Inventory Item Button
                HStack(alignment: .top) {
                    Image(systemName: "arrow.up.and.down.text.horizontal")
                        .foregroundColor(.blue.opacity(0.6))
                        .font(.title3)
                        .padding(.leading, 40)
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(.blue.opacity(0.6))
                        .font(.title3)
                        .padding(.bottom, 40)
                        .padding(.trailing, 40)
                }
                .padding(.top, 25)
                HStack {
                    ProductSortButton(buttonAction: {
                        productButtonSelected = true
                    },
                                      buttonText: "Products")
                            
                    SuppliesSortButton(buttonAction: {
                        productButtonSelected.toggle()
                    },
                                       buttonText: "Supplies")
                        }
                        Spacer()
                //Inventory Item ForEach List
                HStack {
                    Spacer()
                    Text("Stock")
                        .font(.headline)
                        .padding(.top, 15)
                }
//                    .padding(.top, 10)
                    .padding(.trailing, 25)
                
                //Inventory items, called rom InventoryListItem
                List(inventoryItems) { item in
                    ProductListItem(item: item)
                }
                .listStyle(.plain)
                .onAppear {
                    //Call for the data
                    inventoryItems = dataService.getData()
                }

            }
//            .padding(.top, 50)
        }
        .navigationBarTitle("Inventory", displayMode: .inline)


    }

}


#Preview {
    Inventory()
}
