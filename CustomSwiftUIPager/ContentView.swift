
import SwiftUI

struct ContentView: View {
    
    //------------------------------------
    // MARK: Properties
    //------------------------------------
    // # Public/Internal/Open
    
    // # Private/Fileprivate
    private let size: CGSize = CGSize(width: 320, height: 400)
    
    // # Body
    var body: some View {
        
        ZStack {
            
            Color.gray
                .ignoresSafeArea(edges: .all)
            
            PagerMainView(size: size, cornerRadius: 20, pagerContent: addViewsToPager())
        }
    }
    
    //=======================================
    // MARK: Public Methods
    //=======================================
    
    //=======================================
    // MARK: Private Methods
    //=======================================
    private func addViewsToPager() -> [AnyView] {
        
        let view1 = PagerView1(size: size).eraseToAnyView()
        let view2 = PagerView2(size: size).eraseToAnyView()
        let view3 = PagerView3(size: size).eraseToAnyView()
        
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


//=======================================
// MARK: Extensions
//=======================================
extension View {
    func eraseToAnyView() -> AnyView {
        AnyView(self)
    }
}
