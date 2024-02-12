import Foundation

struct DataService {
    func getData() -> [InventoryItem] {
        
        return [InventoryItem(image: "9ozSalsa", type: "Salsa Jar", size: 9, scent: "Lemon Cedar", stock: 3),
                InventoryItem(image: "16ozSalsa", type: "Salsa Jar", size: 16, scent: "Teakwood Cinnamon", stock: 2),
                InventoryItem(image: "6ozDiffuser", type: "Diffuser", size: 6, scent: "Coastal Trail", stock: 0)]
    }
}
