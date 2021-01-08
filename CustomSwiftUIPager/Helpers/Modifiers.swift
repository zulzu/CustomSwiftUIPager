
import SwiftUI

struct ViewToPagerView: ViewModifier {
    
    //------------------------------------
    // MARK: Properties
    //------------------------------------
    // # Public/Internal/Open
    // The size of the pagerView
    let size: CGSize
    
    // # Body
    func body(content: Content) -> some View {
        
        content
            .frame(width: size.width, height: size.height, alignment: .center)
            .contentShape(Rectangle())
    }
}
