// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import UIKit

public class WidgetBackground {
    
    /// Create an instance to make background images for your home screen.
    /// - Parameter screenSize: The size of your screen in points.
    /// - Parameter scale: The scale of your screen (= pixels / points).
    ///
    /// For your current device as default, leave the parameters blank.
    public init(
        screenSize: CGSize = UIScreen.main.bounds.size,
        scale: CGFloat = UIScreen.main.scale
    ) {
        self.scale = scale
        self.bounds = getBounds(screenSize: screenSize, scale: scale)
    }
    
    private let scale: CGFloat
    private var bounds: WidgetBounds? = nil
}

extension WidgetBackground {
    private func getBounds(screenSize: CGSize, scale: CGFloat) -> WidgetBounds? {
        let db = BoundsDatabase
        switch (screenSize.width, screenSize.height) {
        case (393, 852): return scale == 3 ? db[.iPhone15P_15_14P] : nil
        case (430, 932): return scale == 3 ? db[.iPhone15PM_15L_14PM] : nil
        case (375, 812): return scale == 3 ? db[.iPhone13m] : nil
        case (390, 844): return scale == 3 ? db[.iPhone14_13P_13_12P_12] : nil
        case (428, 926): return scale == 3 ? db[.iPhone14L_13PM_12PM] : nil
        // case (375, 812): return scale == 3 ? db[.iPhone12m] : nil
        case (375, 812): return scale == 3 ? db[.iPhone11P_XS_X] : nil
        case (414, 896): return scale == 3 ? db[.iPhone11PM_11_XSM_XR] : nil
        case (414, 736): return scale == 3 ? db[.iPhone8P_7P_6sP] : nil
        case (375, 667): return scale == 2 ? db[.iPhone47i] : nil
        default: return nil
        }
    }
}

extension WidgetBackground {
    
    /// Get background images from a screenshot provided by the user.
    /// - Parameter screenshot: The screenshot image.
    /// - Returns: The images cropped for each size of home screen widgets.
    ///
    /// The screenshot should bt **exactly** the same size at init.
    public func getImages(for screenshot: CGImage) -> WidgetBackgoundImages? {
        guard let validBounds = bounds else {return nil}
        guard
            let stl = screenshot.cropping(to: validBounds.smallTopLeft * scale),
            let scl = screenshot.cropping(to: validBounds.smallCenterLeft * scale),
            let sbl = screenshot.cropping(to: validBounds.smallBottomLeft * scale),
            let str = screenshot.cropping(to: validBounds.smallTopRight * scale),
            let scr = screenshot.cropping(to: validBounds.smallCenterRight * scale),
            let sbr = screenshot.cropping(to: validBounds.smallBottomRight * scale),
            let mt = screenshot.cropping(to: validBounds.mediumTop * scale),
            let mc = screenshot.cropping(to: validBounds.mediumCenter * scale),
            let mb = screenshot.cropping(to: validBounds.mediumBottom * scale),
            let lt = screenshot.cropping(to: validBounds.largeTop * scale),
            let lb = screenshot.cropping(to: validBounds.largeBottom * scale)
        else {return nil}
        
        return WidgetBackgoundImages(
            smallTopLeft: stl,
            smallCenterLeft: scl,
            smallBottomLeft: sbl,
            smallTopRight: str,
            smallCenterRight: scr,
            smallBottomRight: sbr,
            mediumTop: mt,
            mediumCenter: mc,
            mediumBottom: mb,
            largeTop: lt,
            largeBottom: lb
        )
    }
}

/// Enables multiplying a CGRect by some scale.
/// - Parameter left: The original rect.
/// - Parameter right: The scale.
func *(_ left: CGRect, _ right: CGFloat) -> CGRect {
    CGRect(
        x: left.minX * right, y: left.minY * right,
        width: left.width * right, height: left.height * right
    )
}
