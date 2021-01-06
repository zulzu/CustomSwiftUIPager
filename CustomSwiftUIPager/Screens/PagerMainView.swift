
import SwiftUI

struct PagerMainView: View {
    
    //------------------------------------
    // MARK: Properties
    //------------------------------------
    // # Public/Internal/Open
    
    // # Private/Fileprivate
    // The current page of the PagerView
    @State private var currentPage = 0
    // The size of the page indicator dots
    private let circleSize: CGFloat = 8
    // The number of the pages
    private let pageCount: Int = 3
    
    // # Body
    var body: some View {
        
        ZStack {
            
            Color.white
                .cornerRadius(25)
            
            PagerView(pageCount: pageCount, currentIndex: self.$currentPage) {
                PagerView1()
                PagerView2()
                PagerView3()
            }
            
            VStack {
                
                Spacer()
                HStack(alignment: .center, spacing: 8) {
                    
                    ForEach(0..<pageCount) { idx in
                        Circle()
                            .frame(width: circleSize, height: circleSize)
                            .foregroundColor(Color.gray)
                            .opacity(self.currentPage == idx ? 1 : 0.35)
                            .onTapGesture() {
                                self.currentPage = idx
                                print("Page \(idx + 1) tapped!")
                            }
                    }
                }
                .padding(.bottom)
            }
        }
    }
}
