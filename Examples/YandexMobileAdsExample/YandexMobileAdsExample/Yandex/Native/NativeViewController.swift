/*
 * Version for iOS © 2015–2023 YANDEX
 *
 * You may not use this file except in compliance with the License.
 * You may obtain a copy of the License at https://yandex.com/legal/mobileads_sdk_agreement/
 */

import Foundation
import UIKit

enum NativeCellModel: NavigationScreenDataSource, CaseIterable {
    case template
    case custom

    var destinationViewController: UIViewController {
        switch self {
        case .template:
            return NativeTemplateViewController()
        case .custom:
            return NativeCustomViewController()
        }
    }

    var title: String {
        String(describing: self).camelCaseToWords()
    }
    
    var accessibilityId: String? {
        switch self {
        case .template:
            YandexNativeAccessibility.template
        case .custom:
            YandexNativeAccessibility.custom
        }
    }
}

final class NativeViewController: NavigationTableViewController<NativeCellModel> { }
