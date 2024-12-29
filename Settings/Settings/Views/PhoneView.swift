//
//  PhoneView.swift
//  Settings
//
//  Created by Subeen on 12/29/24.
//

import SwiftUI

struct PhoneView: View {
    
    var items: [PhoneItem] = [
//        .init(image: "", title: "Siri & Search", subtitle: nil, content: nil),
        .init(image: "bell.badge.fill", color: Color.red, title: "Notifications", subtitle: "Banners, Sounds, Badges", content: nil),
        .init(image: "phone.arrow.down.left.fill", color: Color.green, title: "Incoming Call", subtitle: nil, content: "Banners"),
        .init(image: "phone.badge.waveform.fill", color: Color.red, title: "Announce Call", subtitle: nil, content: nil),
    ]
    
    var itemsTwo: [PhoneItem] = [
        .init(title: "Calls on Other Devices"),
        .init(title: "Respond with Text"),
        .init(title: "Call Forwarding"),
        .init(title: "Call Waiting"),
        .init(title: "Show My Caller ID"),
    
    ]
    
    var itemsThree: [PhoneItem] = [
        .init(title: "Silence Unknown Callers"),
        .init(title: "Call Blocking & Identification"),
        .init(title: "Blocked Contacts"),
        .init(title: "SMS/Call Reporting"),
    ]
    
    var body: some View {
        NavigationStack {
            
            Form {
                Section(header: Text("ALLOW PHONE TO ACCESS")) {
                    
                    NavigationLink {
                        
                    } label: {
                        HStack(spacing: 15) {
                            
                            Image("Image")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            
                            Text("Siri & Search")
                                
                        }
                    }
                    
                    ForEach(items) { item in
                        
                        NavigationLink {
                            
                        } label: {
                            HStack(spacing: 15) {
                                
                                ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(item.color)
                                    
                                Image(systemName: item.image ?? "Call")
                                    .foregroundColor(.white)
                                }
                               
                                    
                                
                                VStack(alignment: .leading) {
                                    Text(item.title)
                                    
                                    if let subtitle = item.subtitle {
                                        Text(subtitle)
                                            .font(.caption)
                                            .foregroundStyle(.secondary)
                                    }
                                }
                                
                                Spacer()
                                
                                if let content = item.content {
                                    Text(content)
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }
                    }
                }
                
                // TODO: - 전화번호 
                Section {
                    HStack {
                        Text("My Number")
                        Spacer()
                        Text("+82 10-1234-1234")
                            .foregroundStyle(.secondary)
                    }
                }
                
                Section {
                    HStack {
                        
                        NavigationLink {
                            
                        } label: {
                            HStack {
                                Text("Share Name and Photo")
                                Spacer()
                                Text("Contacts")
                                    .foregroundStyle(.secondary)
                                    .lineLimit(1)
                            }
                        }
                    }
                } footer: {
                    Text("Updated name and photo will be automatically shared with people in your contacts")
                }
                
                Section {
                    ForEach(itemsTwo) { item in
                        
                        NavigationLink {
                            
                        } label: {
                            Text(item.title)
                        }
                    }
                } header: {
                    Text("CALLS")
                }
                
                Section {
                    ForEach(itemsThree) { item in
                        
                        NavigationLink {
                            
                        } label: {
                            Text(item.title)
                        }
                    }
                }
            }
            
            
            
            .navigationTitle("Phone")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

@ViewBuilder
func phoneItemView() -> some View {
    HStack {
        ZStack {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .frame(width: 30, height: 30)
//                .foregroundColor(Color(UIColor.colorWith(name: item.color.rawValue)!))
//            Image(systemName: item.image)
//                .foregroundColor(.white)
        }

        Text("")
    }
}

struct PhoneItem: Identifiable {
    var id = UUID().uuidString
    var image: String?
    var color: Color?
    var title: String
    var subtitle: String?
    var content: String?
}

#Preview {
    PhoneView()
}
