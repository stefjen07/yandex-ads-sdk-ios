/*
 * Version for iOS © 2015–2021 YANDEX
 *
 * You may not use this file except in compliance with the License.
 * You may obtain a copy of the License at https://yandex.com/legal/mobileads_sdk_agreement/
 */

import UIKit
import YandexMobileAds

class SettingsViewController: UIViewController {
    @IBOutlet weak var userConsentSwitch: UISwitch!

    var gdprManager: GDPRUserConsentManager?

    override func viewDidLoad() {
        super.viewDidLoad()
        userConsentSwitch.isOn = gdprManager?.userConsent ?? false
    }

    @IBAction func userConsentDidChange(_ sender: UISwitch) {
       setUserConsent(sender.isOn)
    }

    @IBAction func resetUserConsent(_ sender: UIButton) {
        setUserConsent(false)
        userConsentSwitch.setOn(false, animated: true)
        gdprManager?.showDialog = true
    }

    private func setUserConsent(_ consent : Bool) {
        gdprManager?.userConsent = consent
    }
}
