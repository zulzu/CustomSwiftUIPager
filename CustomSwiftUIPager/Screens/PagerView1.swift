
import SwiftUI

struct PagerView1: View {
    
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
            
            Text("Page 1")
        }
        .frame(width: size.width, height: size.height, alignment: .center)
        .contentShape(Rectangle())
    }
}
