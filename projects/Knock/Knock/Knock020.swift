//
//  Knock020.swift
//  Knock
//

import SwiftUI

struct Knock020: View {
    @State var isClicked = false
    var body: some View {
        NavigationView {
            VStack {
                Button(action: { isClicked = true }) {
                    Text("Click")
                }

                NavigationLink(
                    destination: Text("SecondView"),
                    isActive: $isClicked)
                {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    Knock020()
}
