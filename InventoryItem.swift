import Foundation

struct InventoryItem: Identifiable {
    var id: UUID = UUID()
    var image: String
    var type: String
    var size: Int
    var scent: String
    var stock: Int
}
