
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
    // The size of the page indicator dots
    let pageIndicatorSize: CGFloat
    // An array of AnyViews so show as content
    let pagerContent: Array<AnyView>
    // The background colour of the view
    let bgColour: Color?
    
    // # Private/Fileprivate
    // The number of the pages
    private let pageCount: Int = 3
    // The current page of the PagerView
    @State private var currentPage = 0
    
    // # Body
    var body: some View {
        
        ZStack {
            
            bgColour
            
            PagerContentView(pageCount: pagerContent.count, size: size, currentIndex: $currentPage) {
                ForEach(0..<pagerContent.count) { idx in
                    pagerContent[idx]
                }
            }
            
            VStack {
                
                Spacer()
                
                HStack(alignment: .center, spacing: 8) {
                    
                    ForEach(0..<pageCount) { idx in
                        Circle()
                            .frame(width: pageIndicatorSize, height: pageIndicatorSize)
                            .foregroundColor(Color.gray)
                            .opacity(self.currentPage == idx ? 1 : 0.35)
                    }
                }
                .padding(.bottom, 10)
            }
        }
        .frame(width: size.width, height: size.height, alignment: .center)
        .cornerRadius(cornerRadius)
        .clipped()
    }
    
    //=======================================
    // MARK: Public Methods
    //=======================================
    /// Creates a custom pager view
    /// - Parameters:
    ///   - size: The width and the height of the pager view
    ///   - cornerRadius: The corner radius of the view
    ///   - pageIndicatorSize: The size of the page indicator dots
    ///   - pagerContent: An array of AnyViews so show as content
    ///   - bgColour: An optional background colour for the view, default colour: white
    public init(size: CGSize, cornerRadius: CGFloat, pageIndicatorSize: CGFloat, pagerContent: Array<AnyView>, bgColour: Color? = .white) {
        self.size = size
        self.cornerRadius = cornerRadius
        self.pageIndicatorSize = pageIndicatorSize
        self.pagerContent = pagerContent
        self.bgColour = bgColour
    }
}
