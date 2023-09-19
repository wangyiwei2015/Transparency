//
//  DataStruct.swift
//  
//
//  Created by leo on 2023-09-19.
//

import UIKit

public struct WidgetBounds {
    let smallTopLeft:     CGRect
    let smallCenterLeft:  CGRect
    let smallBottomLeft:  CGRect
    let smallTopRight:    CGRect
    let smallCenterRight: CGRect
    let smallBottomRight: CGRect
    let mediumTop:        CGRect
    let mediumCenter:     CGRect
    let mediumBottom:     CGRect
    let largeTop:         CGRect
    let largeBottom:      CGRect
}

public struct WidgetBackgoundImages {
    public let smallTopLeft:     CGImage
    public let smallCenterLeft:  CGImage
    public let smallBottomLeft:  CGImage
    public let smallTopRight:    CGImage
    public let smallCenterRight: CGImage
    public let smallBottomRight: CGImage
    public let mediumTop:        CGImage
    public let mediumCenter:     CGImage
    public let mediumBottom:     CGImage
    public let largeTop:         CGImage
    public let largeBottom:      CGImage
}

public enum DeviceModel: Int {
    case iPhone15PM_15L_14PM
    case iPhone15P_15_14P
    case iPhone13m
    case iPhone14_13P_13_12P_12
    case iPhone14L_13PM_12PM
    case iPhone12m
    case iPhone11P_XS_X
    case iPhone11PM_11_XSM_XR
    case iPhone8P_7P_6sP
    case iPhone47i
}

let BoundsDatabase: [DeviceModel: WidgetBounds] = [
    .iPhone15P_15_14P : WidgetBounds(
        smallTopLeft:     CGRect(x:  27,    y:  90, width: 158, height: 158),
        smallCenterLeft:  CGRect(x:  27,    y: 286, width: 158, height: 158),
        smallBottomLeft:  CGRect(x:  27,    y: 482, width: 158, height: 158),
        smallTopRight:    CGRect(x: 207.6,  y:  90, width: 158, height: 158),
        smallCenterRight: CGRect(x: 207.67, y: 286, width: 158, height: 158),
        smallBottomRight: CGRect(x: 207.67, y: 482, width: 158, height: 158),
        mediumTop:        CGRect(x:  27,    y:  90, width: 338, height: 158),
        mediumCenter:     CGRect(x:  27,    y: 286, width: 338, height: 158),
        mediumBottom:     CGRect(x:  27,    y: 482, width: 338, height: 158),
        largeTop:         CGRect(x:  27,    y:  90, width: 338, height: 338.67),
        largeBottom:      CGRect(x:  27,    y: 286, width: 338, height: 338.67)
    ),
    .iPhone15PM_15L_14PM : WidgetBounds(
        smallTopLeft:     CGRect(x:  31   , y:  94, width: 170   , height: 170),
        smallCenterLeft:  CGRect(x:  31   , y: 306, width: 170   , height: 170),
        smallBottomLeft:  CGRect(x:  31   , y: 518, width: 170   , height: 170),
        smallTopRight:    CGRect(x: 228.67, y:  94, width: 170   , height: 170),
        smallCenterRight: CGRect(x: 228.67, y: 306, width: 170   , height: 170),
        smallBottomRight: CGRect(x: 228.67, y: 518, width: 170   , height: 170),
        mediumTop:        CGRect(x:  31   , y:  94, width: 367.67, height: 170),
        mediumCenter:     CGRect(x:  31   , y: 306, width: 367.67, height: 170),
        mediumBottom:     CGRect(x:  31   , y: 518, width: 367.67, height: 170),
        largeTop:         CGRect(x:  31   , y:  94, width: 367.67, height: 367.67),
        largeBottom:      CGRect(x:  31   , y: 306, width: 367.67, height: 367.67)
    ),
    .iPhone13m : WidgetBounds(
        smallTopLeft:     CGRect(x:  22, y:  74    , width: 149, height: 149),
        smallCenterLeft:  CGRect(x:  22, y: 256.333, width: 149, height: 149),
        smallBottomLeft:  CGRect(x:  22, y: 439    , width: 149, height: 149),
        smallTopRight:    CGRect(x: 189, y:  74    , width: 149, height: 149),
        smallCenterRight: CGRect(x: 189, y: 256.333, width: 149, height: 149),
        smallBottomRight: CGRect(x: 189, y: 439    , width: 149, height: 149),
        mediumTop:        CGRect(x:  22, y:  74    , width: 316, height: 149),
        mediumCenter:     CGRect(x:  22, y: 256.333, width: 316, height: 149),
        mediumBottom:     CGRect(x:  22, y: 439    , width: 316, height: 149),
        largeTop:         CGRect(x:  22, y:  74    , width: 316, height: 316),
        largeBottom:      CGRect(x:  22, y: 256.333, width: 316, height: 316)
    ),
    .iPhone14_13P_13_12P_12 : WidgetBounds(
        smallTopLeft:     CGRect(x:  26, y:  77, width: 158, height: 158),
        smallCenterLeft:  CGRect(x:  26, y: 273, width: 158, height: 158),
        smallBottomLeft:  CGRect(x:  26, y: 469, width: 158, height: 158),
        smallTopRight:    CGRect(x: 206, y:  77, width: 158, height: 158),
        smallCenterRight: CGRect(x: 206, y: 273, width: 158, height: 158),
        smallBottomRight: CGRect(x: 206, y: 469, width: 158, height: 158),
        mediumTop:        CGRect(x:  26, y:  77, width: 338, height: 158),
        mediumCenter:     CGRect(x:  26, y: 273, width: 338, height: 158),
        mediumBottom:     CGRect(x:  26, y: 469, width: 338, height: 158),
        largeTop:         CGRect(x:  26, y:  77, width: 338, height: 338),
        largeBottom:      CGRect(x:  26, y: 273, width: 338, height: 338)
    ),
    .iPhone14L_13PM_12PM : WidgetBounds(
        smallTopLeft:     CGRect(x:  32, y:  82, width: 170, height: 170),
        smallCenterLeft:  CGRect(x:  32, y: 294, width: 170, height: 170),
        smallBottomLeft:  CGRect(x:  32, y: 506, width: 170, height: 170),
        smallTopRight:    CGRect(x: 226, y:  82, width: 170, height: 170),
        smallCenterRight: CGRect(x: 226, y: 294, width: 170, height: 170),
        smallBottomRight: CGRect(x: 226, y: 506, width: 170, height: 170),
        mediumTop:        CGRect(x:  32, y:  82, width: 364, height: 170),
        mediumCenter:     CGRect(x:  32, y: 294, width: 364, height: 170),
        mediumBottom:     CGRect(x:  32, y: 506, width: 364, height: 170),
        largeTop:         CGRect(x:  32, y:  82, width: 364, height: 364),
        largeBottom:      CGRect(x:  32, y: 294, width: 364, height: 364)
    ),
    .iPhone12m : WidgetBounds(
        smallTopLeft:     CGRect(x:  23, y:  77, width: 155, height: 155),
        smallCenterLeft:  CGRect(x:  23, y: 267, width: 155, height: 155),
        smallBottomLeft:  CGRect(x:  23, y: 457, width: 155, height: 155),
        smallTopRight:    CGRect(x: 197, y:  77, width: 155, height: 155),
        smallCenterRight: CGRect(x: 197, y: 267, width: 155, height: 155),
        smallBottomRight: CGRect(x: 197, y: 457, width: 155, height: 155),
        mediumTop:        CGRect(x:  23, y:  77, width: 329, height: 155),
        mediumCenter:     CGRect(x:  23, y: 267, width: 329, height: 155),
        mediumBottom:     CGRect(x:  23, y: 457, width: 329, height: 155),
        largeTop:         CGRect(x:  23, y:  77, width: 329, height: 329),
        largeBottom:      CGRect(x:  23, y: 267, width: 329, height: 329)
    ),
    .iPhone11P_XS_X : WidgetBounds(
        smallTopLeft:     CGRect(x:  23, y:  71, width: 155, height: 155),
        smallCenterLeft:  CGRect(x:  23, y: 261, width: 155, height: 155),
        smallBottomLeft:  CGRect(x:  23, y: 451, width: 155, height: 155),
        smallTopRight:    CGRect(x: 197, y:  71, width: 155, height: 155),
        smallCenterRight: CGRect(x: 197, y: 261, width: 155, height: 155),
        smallBottomRight: CGRect(x: 197, y: 451, width: 155, height: 155),
        mediumTop:        CGRect(x:  23, y:  71, width: 329, height: 155),
        mediumCenter:     CGRect(x:  23, y: 261, width: 329, height: 155),
        mediumBottom:     CGRect(x:  23, y: 451, width: 329, height: 155),
        largeTop:         CGRect(x:  23, y:  71, width: 329, height: 329),
        largeBottom:      CGRect(x:  23, y: 261, width: 329, height: 329)
    ),
    .iPhone11PM_11_XSM_XR : WidgetBounds(
        smallTopLeft:     CGRect(x:  27, y:  76, width: 169, height: 169),
        smallCenterLeft:  CGRect(x:  27, y: 286, width: 169, height: 169),
        smallBottomLeft:  CGRect(x:  27, y: 496, width: 169, height: 169),
        smallTopRight:    CGRect(x: 218, y:  76, width: 169, height: 169),
        smallCenterRight: CGRect(x: 218, y: 286, width: 169, height: 169),
        smallBottomRight: CGRect(x: 218, y: 496, width: 169, height: 169),
        mediumTop:        CGRect(x:  27, y:  76, width: 360, height: 169),
        mediumCenter:     CGRect(x:  27, y: 286, width: 360, height: 169),
        mediumBottom:     CGRect(x:  27, y: 496, width: 360, height: 169),
        largeTop:         CGRect(x:  27, y:  76, width: 360, height: 360),
        largeBottom:      CGRect(x:  27, y: 286, width: 360, height: 360)
    ),
    .iPhone8P_7P_6sP : WidgetBounds(
        smallTopLeft:     CGRect(x:  33, y:  38, width: 159, height: 159),
        smallCenterLeft:  CGRect(x:  33, y: 232, width: 159, height: 159),
        smallBottomLeft:  CGRect(x:  33, y: 426, width: 159, height: 159),
        smallTopRight:    CGRect(x: 224, y:  38, width: 159, height: 159),
        smallCenterRight: CGRect(x: 224, y: 232, width: 159, height: 159),
        smallBottomRight: CGRect(x: 224, y: 426, width: 159, height: 159),
        mediumTop:        CGRect(x:  33, y:  38, width: 348, height: 159),
        mediumCenter:     CGRect(x:  33, y: 232, width: 348, height: 159),
        mediumBottom:     CGRect(x:  33, y: 426, width: 348, height: 159),
        largeTop:         CGRect(x:  33, y:  38, width: 348, height: 348),
        largeBottom:      CGRect(x:  33, y: 232, width: 348, height: 348)
    ),
    .iPhone47i : WidgetBounds(
        smallTopLeft:     CGRect(x:  28, y:  30, width: 148, height: 148),
        smallCenterLeft:  CGRect(x:  28, y: 206, width: 148, height: 148),
        smallBottomLeft:  CGRect(x:  28, y: 382, width: 148, height: 148),
        smallTopRight:    CGRect(x: 200, y:  30, width: 148, height: 148),
        smallCenterRight: CGRect(x: 200, y: 206, width: 148, height: 148),
        smallBottomRight: CGRect(x: 200, y: 382, width: 148, height: 148),
        mediumTop:        CGRect(x:  28, y:  30, width: 322, height: 148),
        mediumCenter:     CGRect(x:  28, y: 206, width: 322, height: 148),
        mediumBottom:     CGRect(x:  28, y: 382, width: 322, height: 148),
        largeTop:         CGRect(x:  28, y:  30, width: 322, height: 322),
        largeBottom:      CGRect(x:  28, y: 206, width: 322, height: 322)
    ),
]
