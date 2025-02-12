//
//  Copyright © 2019 Paolo Leonardi.
//
//  Licensed under the MIT license. See the LICENSE file for more info.
//

import SwiftUI

// MARK: - GridStyle

extension View {

    /// Sets the style for `WaterfallGrid` within the environment of `self`.
    ///
    /// - Parameter columns: The number of columns of the grid. The default is `2`.
    /// - Parameter spacing: The distance between adjacent items. The default is `8`.
    /// - Parameter padding: The custom distance that the content view is inset from the scroll view edges. The default is`0` for all edges.
    /// - Parameter animation: The animation to apply when data change. If `animation` is `nil`, the grid doesn't animate.
    public func gridStyle(
        columns: Int = 2,
        spacing: CGFloat = 8,
        padding: EdgeInsets = .init(),
        animation: Animation? = .default,
        background: AnyView = AnyView(Color.clear)
    ) -> some View {
        let style = GridSyle(
            columnsInPortrait: columns,
            columnsInLandscape: columns,
            spacing: spacing,
            padding: padding,
            animation: animation,
            background: background
        )
        return self.environment(\.gridStyle, style)
    }

    /// Sets the style for `WaterfallGrid` within the environment of `self`.
    ///
    /// - Parameter columnsInPortrait: The number of columns of the grid when the device is in a portrait orientation. The default is `2`.
    /// - Parameter columnsInLandscape: The number of columns of the grid when the device is in a landscape orientation The default is `2`.
    /// - Parameter spacing: The distance between adjacent items. The default is `8`.
    /// - Parameter padding: The custom distance that the content view is inset from the scroll view edges. The default is`0` for all edges.
    /// - Parameter animation: The animation to apply when data change. If `animation` is `nil`, the grid doesn't animate.
    @available(OSX, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    public func gridStyle(
        columnsInPortrait: Int = 2,
        columnsInLandscape: Int = 2,
        spacing: CGFloat = 8,
        padding: EdgeInsets = .init(),
        animation: Animation? = .default,
        background: AnyView = AnyView(Color.clear)
    ) -> some View {
        let style = GridSyle(
            columnsInPortrait: columnsInPortrait,
            columnsInLandscape: columnsInLandscape,
            spacing: spacing,
            padding: padding,
            animation: animation,
            background: background
        )
        return self.environment(\.gridStyle, style)
    }

}
