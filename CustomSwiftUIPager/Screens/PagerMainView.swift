
import SwiftUI

struct PagerMainView: View {
    
    //------------------------------------
    // MARK: Properties
    //------------------------------------
    // # Public/Internal/Open
    
    // # Private/Fileprivate
    // The current page of the PagerView
    @State private var currentPage = 0
    
    // # Body
    var body: some View {
        
        ZStack {
            
            PagerView(pageCount: 3, currentIndex: self.$currentPage) {
                PagerView1()
                PagerView2()
                PagerView3()
            }
        }
    }
}


