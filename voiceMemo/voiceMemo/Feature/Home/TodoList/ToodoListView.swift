//
//  ToodoListView.swift
//  voiceMemo
//

import SwiftUI

struct TodoListView: View {
    @EnvironmentObject private var pathModel: PathModel
    @EnvironmentObject private var todoListViewModel: TodoListViewModel
    
    var body: some View {
        ZStack {
            // todo cell list
            VStack {
                if !todoListViewModel.todos.isEmpty {
                    CustomNavigationBar(
                        isDisplayLeftButton: false,
                        rightButtonAction: {
                            todoListViewModel.navigationRightButtonTapped()
                        },
                        rightButtonType: todoListViewModel.navigationBarRightButtonMode
                    )
                } else {
                    Spacer()
                        .frame(height: 30)
                }
            }
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
            .environmentObject(PathModel())
            .environmentObject(TodoListViewModel())
    }
}
