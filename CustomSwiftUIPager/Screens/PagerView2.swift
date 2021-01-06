
import SwiftUI

struct PagerView2: View {
    
    //------------------------------------
    // MARK: Properties
    //------------------------------------
    // # Public/Internal/Open
    // The size of the pagerView
    let size: CGSize
    
    // # Private/Fileprivate
    
    // # Body
    var body: some View {
        
        VStack {
            
            Text("Page 2")
        }
        .frame(width: size.width, height: size.height, alignment: .center)
        .contentShape(Rectangle())
    }
}
