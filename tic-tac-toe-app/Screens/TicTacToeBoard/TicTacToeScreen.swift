//
//  TicTacToeScreen.swift
//  tic-tac-toe-app
//
//  Created by Ian Baikuchukov on 10/12/23.
//

import SwiftUI

struct TicTacToeScreen: View {
    var body: some View {
        ZStack {
            AppColors.getColor(.backgroundColor)
                .ignoresSafeArea()
            
            VStack {
                Text("Some content")
                    .frame(maxHeight: .infinity, alignment: .center)
            }
        }
    }
}

struct TicTacToeScreen_Previews: PreviewProvider {
    static var previews: some View {
        TicTacToeScreen()
    }
}
