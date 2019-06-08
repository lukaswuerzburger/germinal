//
//  PersonCell.swift
//  Germinal
//
//  Created by Lukas Würzburger on 6/7/19.
//  Copyright © 2019 Lukas Würzburger. All rights reserved.
//

import SwiftUI

struct PersonCell: View {
    let person: Person

    var checkedInRecently: Bool {
        person.lastCheckIn.timeIntervalSince1970 > Date().timeIntervalSince1970 - 300
    }

    var checkInText: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return checkedInRecently ? "Recently seen" : "Last seen \(formatter.string(from: person.lastCheckIn))"
    }

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(person.displayName)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(person.email)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Text(checkInText)
                .font(.footnote)
                .foregroundColor(checkedInRecently ? .green : .secondary)
        }
    }
}

