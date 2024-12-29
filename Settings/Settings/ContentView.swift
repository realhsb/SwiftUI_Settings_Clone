//
//  ContentView.swift
//  Settings
//
//  Created by Subeen on 12/29/24.
//

import SwiftUI

struct ContentView: View {

    // MARK: - Properties
    
    private var items = Items()
    var onClose: (() -> Void)?

    var body: some View {
        NavigationStack {
            List {
                
                Section {
                    NavigationLink {
                        
                    } label: {
                        HStack(spacing: 10) {
                            
                            Circle()
                                .frame(width: 60, height: 60)
                                .foregroundStyle(.gray.gradient)
                                .overlay {
                                    Text("한")
                                        .font(.title)
                                        .foregroundStyle(.white)
                                }
                            
                            // TODO: - 이름
                            VStack(alignment: .leading) {
                                Text("한이름")
                                    .font(.title2)
                                Text("Apple ID, iCloud+, Media & Purchases")
                                    .font(.subheadline)
                            }
                        }
                    }
                }
                
                Section {
                    ForEach(items.connectivity, id: \.self) { item in
                        NavigationLink(
                            destination: Text(item.title),
                            label: { ItemRowView(item: item) }
                        )
                    }
                }

                Section {
                    ForEach(items.alert, id: \.self) { item in
                        NavigationLink(
                            destination: Text(item.title),
                            label: { ItemRowView(item: item) }
                        )
                    }
                }

                Section {
                    ForEach(items.preference, id: \.self) { item in
                        NavigationLink(
                            destination: Text(item.title),
                            label: { ItemRowView(item: item) }
                        )
                    }
                }

                Section {
                    ForEach(items.appStore, id: \.self) { item in
                        NavigationLink(
                            destination: Text(item.title),
                            label: { ItemRowView(item: item) }
                        )
                    }
                }

                Section {
                    ForEach(items.preInstalled, id: \.self) { item in
                        
                        if (item.title == "Phone") {
                            NavigationLink(
                                destination: PhoneView(),
                                label: { ItemRowView(item: item) }
                            )
                        } else {
                            NavigationLink(
                                destination: Text(item.title),
                                label: { ItemRowView(item: item) }
                            )
                        }
                    }
                }
            }
//            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Settings"))
//            .navigationBarTitleDisplayMode(.large)
            .scrollIndicators(.hidden)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
