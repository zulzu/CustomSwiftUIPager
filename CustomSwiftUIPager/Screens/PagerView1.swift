
import SwiftUI

struct PagerView1: View {
    
    //------------------------------------
    // MARK: Properties
    //------------------------------------
    // # Public/Internal/Open
    
    // # Private/Fileprivate
    
    // # Body
    var body: some View {
                    
            VStack {
                
                Text("Page 1")
            }
            .frame(minWidth: 250, minHeight: 250, alignment: .center)
            .contentShape(Rectangle())
    }
}
