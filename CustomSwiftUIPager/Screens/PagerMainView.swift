
import SwiftUI

struct PagerMainView: View {
    
    //------------------------------------
    // MARK: Properties
    //------------------------------------
    // # Public/Internal/Open
    // The size of the pagerView
    let size: CGSize
    // The corner radius of the view
    let cornerRadius: CGFloat
    
    // # Private/Fileprivate
    // The number of the pages
    private let pageCount: Int = 3
    // The current page of the PagerView
    @State private var currentPage = 0
    // The size of the page indicator dots
    private let circleSize: CGFloat = 8
    
    // # Body
    var body: some View {
        
        ZStack {
            
            Color.white
                .cornerRadius(cornerRadius)
            
            //TODO: Probaby the pagerView shouldn't know anything about the content - use an Array<AnyView> maybe and should get the count from that too?
            PagerView(pageCount: pageCount, size: size, currentIndex: self.$currentPage) {
                PagerView1(size: size)
                PagerView2(size: size)
                PagerView3(size: size)
            }
            
            VStack {
                
                Spacer()
                
                HStack(alignment: .center, spacing: 8) {
                    
                    ForEach(0..<pageCount) { idx in
                        Circle()
                            .frame(width: circleSize, height: circleSize)
                            .foregroundColor(Color.gray)
                            .opacity(self.currentPage == idx ? 1 : 0.35)
                    }
                }
                .padding(.bottom, 10)
            }
        }
        .frame(width: size.width, height: size.height, alignment: .center)
        .clipped()
    }
    
    //=======================================
    // MARK: Public Methods
    //=======================================
    /// Creates a `PagerMainView`.
    /// - Parameters:
    ///   - size: The width and the height of the pager view
    ///   - cornerRadius: The corner radius of the view
    public init(size: CGSize, cornerRadius: CGFloat) {
        self.size = size
        self.cornerRadius = cornerRadius
    }
}
