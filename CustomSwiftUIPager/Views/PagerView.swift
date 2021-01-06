

import SwiftUI

struct PagerView<Content: View>: View {
    
    //------------------------------------
    // MARK: Properties
    //------------------------------------
    // # Public/Internal/Open
    // The page count of the PagerView
    let pageCount: Int
    // The pages of the PagerView
    let content: Content
    // The current page of the PagerView
    @Binding var currentIndex: Int

    // # Private/Fileprivate
    // The value for the DragGesture to update the position of the dragged page
    @GestureState private var translation: CGFloat = 0

    // # Body
    var body: some View {
        
        GeometryReader { geometry in
            
            HStack(spacing: 0) {
                
                self.content.frame(width: geometry.size.width)
            }
            .frame(width: geometry.size.width, alignment: .leading)
            .offset(x: -CGFloat(self.currentIndex) * geometry.size.width)
            .offset(x: self.translation)
            .animation(.interactiveSpring())
            .gesture(
                DragGesture().updating(self.$translation) { value, state, _ in
                    state = value.translation.width
                }.onEnded { value in
                    let offset = value.translation.width / geometry.size.width
                    let newIndex = (CGFloat(self.currentIndex) - offset).rounded()
                    self.currentIndex = min(max(Int(newIndex), 0), self.pageCount - 1)
                }
            )
        }
    }

    init(pageCount: Int, currentIndex: Binding<Int>, @ViewBuilder content: () -> Content) {
        self.pageCount = pageCount
        self._currentIndex = currentIndex
        self.content = content()
    }
}
