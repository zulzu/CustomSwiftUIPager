
import SwiftUI

struct PagerView3: View {
    
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
            
            Text("Page 3")
        }
        .frame(width: size.width, height: size.height, alignment: .center)
        .contentShape(Rectangle())
    }
}
