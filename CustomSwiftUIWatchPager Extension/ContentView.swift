
import SwiftUI

struct ContentView: View {
    
    //------------------------------------
    // MARK: Properties
    //------------------------------------
    // # Public/Internal/Open
    
    // # Private/Fileprivate
    private let size: CGSize = CGSize(width: WKInterfaceDevice.current().screenBounds.width, height: WKInterfaceDevice.current().screenBounds.height)
    
    // # Body
    var body: some View {
        
        ZStack {

            PagerMainView(size: size, cornerRadius: 0, pageIndicatorSize: 6, pagerContent: addViewsToPager(), bgColour: .clear)
        }
    }
    
    //=======================================
    // MARK: Public Methods
    //=======================================
    
    //=======================================
    // MARK: Private Methods
    //=======================================
    private func addViewsToPager() -> [AnyView] {
        
        let view1 = WatchPagerView1()
            .modifier(ViewToPagerView(size: size))
            .eraseToAnyView()

        let view2 = WatchPagerView2()
            .modifier(ViewToPagerView(size: size))
            .eraseToAnyView()
        
        let view3 = WatchPagerView3()
            .modifier(ViewToPagerView(size: size))
            .eraseToAnyView()
        
        let pageArray = [view1, view2, view3]
        
        return pageArray
    }
}


//=======================================
// MARK: Previews
//=======================================
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
