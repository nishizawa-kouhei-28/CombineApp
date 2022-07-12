//
//  ContentView.swift
//  combineApp28
//
//  Created by 西澤 耕平 on 2022/07/10.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        nankaView(viewModel: ContentViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
