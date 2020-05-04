//
//  ContentView.swift
//  BindingInSwiftUI
//
//  Created by Fateh Khan on 04/05/2020.
//  Copyright © 2020 Zarrar Company. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    var body: some View {
        VStack {
            Text(self.name)
            TextField("Name", text: self.$name)
            .padding(12)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
