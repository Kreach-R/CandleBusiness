import SwiftUI

struct MainView: View {
    
    
    var body: some View {
        
            
            NavigationView {
            
                ScrollView {

                
                    VStack {
                    
                        //Inventory view link
                        Text("My Dashboard")
                            .padding(.top, 40)
                            .padding(.bottom, 20)
                            .font(.title)
                        
                        Button {
                        
                        } label: {
                            NavigationLink(destination: Inventory()) {
                                Text("INVENTORY")
                            }
                        }
                        .frame(width: 200, height: 50)
                        .background(.blue.opacity(0.45))
                        .border(.blue.opacity(0.35))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.vertical, 5)
                    
                        //Sales tracker view link
                        Button {
                            
                        } label: {
                            NavigationLink(destination: Sales()) {
                                Text("SALES")
                            }
                        }
                        .frame(width: 200, height: 50)
                        .background(.blue.opacity(0.45))
                        .border(.blue.opacity(0.35))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.vertical, 5)

                        
                        //Expense tracker view link
                        Button {
                            
                        } label: {
                            NavigationLink(destination: Expenses()) {
                                Text("EXPENSES")
                            }
                        }
                        .frame(width: 200, height: 50)
                        .background(.blue.opacity(0.45))
                        .border(.blue.opacity(0.35))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.vertical, 5)

                        
                        //Recipes view link
                        Button {
                            
                        } label: {
                            NavigationLink(destination: Recipes()) {
                                Text("RECIPES")
                            }
                        }
                        .frame(width: 200, height: 50)
                        .background(.blue.opacity(0.45))
                        .border(.blue.opacity(0.35))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.vertical, 5)

                        
                        
                        //COGS/Pricing view link
                        Button {
                            
                        } label: {
                            NavigationLink(destination: COGS()) {
                                Text("COGS/PRICING")
                            }
                        }
                        .frame(width: 200, height: 50)
                        .background(.blue.opacity(0.45))
                        .border(.blue.opacity(0.35))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.vertical, 5)
                        
                        // Experiment with views and view modifiers here
                    }
                .navigationTitle("Sizzle & Sand")
                
                }
            }
        }
    }

    #Preview {
        MainView()
    }
