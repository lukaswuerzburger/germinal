//
//  PeopleView.swift
//  Germinal
//
//  Created by Mac Beta on 6/7/19.
//  Copyright © 2019 Lukas Würzburger. All rights reserved.
//

import SwiftUI

struct PeopleView : View {
    let people: [Person]
    @State var showsAlert = false
    @State var isLoading = false
    
    var body: some View {
        NavigationView {
            List(people) { person in
                PersonCell(person: person)
            }
            .navigationBarTitle(Text("German Table 🇩🇪"))
            .navigationBarItems(
                leading: Text("Loading ...").opacity(isLoading ? 1 : 0),
                trailing: Button(action: {
                    self.isLoading = true
                    CheckInService.shared.checkIn { (success) in
                        self.showsAlert = !success
                        self.isLoading = false
                    }
                }, label: {
                    Text("Check in")
                })
            )
            .presentation($showsAlert) {
                Alert(title: Text("Error"))
            }
        }
    }
}

#if DEBUG
struct PeopleView_Previews : PreviewProvider {
    static var previews: some View {
        PeopleView(people: testData)
    }
    
    static let testData: [Person] = [
        Person(id: 1, email: "yes@me.com", displayName: "Max", lastCheckIn: Date()),
        Person(id: 2, email: "no@apple.com", displayName: "Muster", lastCheckIn: Date()),
        Person(id: 3, email: "swiftui@no.com", displayName: "Mann", lastCheckIn: Date(timeIntervalSince1970: 0))
    ]
}
#endif
