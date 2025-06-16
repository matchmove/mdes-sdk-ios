# mdes-sdk-ios
Easy to use sdk for provisioning card to apple wallet
Mdes SDK for iOS
An easy-to-use iOS SDK designed for provisioning payment cards to Apple Wallet. This SDK simplifies the integration of your app with Apple's Wallet ecosystem, handling the complex logic for card addition and secure communication.

✨ Features
Payment Pass Provisioning: Facilitates the secure addition of payment cards to Apple Wallet.

Wallet Extension Integration: Designed to work seamlessly with both non-UI and UI Wallet extensions for a robust provisioning flow.

Pass Entry Management: Provides methods to determine the number of passes available for addition on iPhone and Apple Watch.

🚀 Installation
The Mdes SDK is distributed as a binary framework via Swift Package Manager (SPM).

Using Swift Package Manager (Recommended)

In Xcode, open your project.

Navigate to File > Swift Packages > Add Package Dependency...

Enter the repository URL: https://github.com/matchmove/mdes-sdk-ios.git

Select the desired version. It's recommended to choose a specific version (e.g., 2.0.0) or a version range over a branch for stable builds.

Add the package to your target(s). Xcode will then fetch the Mdes.xcframework binary.

Note on Binary Targets: This package uses a binary target (.binaryTarget(name: "Mdes", path: "Mdes.xcframework")). SPM will download the pre-compiled Mdes.xcframework directly.

💡 Usage

Wallet Extension Functionality
This SDK supports both Non-UI and UI Wallet extensions:

Non-UI Extension: Primarily handles the background logic related to pass availability and authentication requirements.

status: Checks if passes are available and if authentication is needed.

passEntries: Returns the number of passes available for iPhone.

remotePassEntries: Returns the number of passes available for Apple Watch.

generateAddPaymentPassRequestForPassEntryWithIdentifier: Used to provision the card securely.

UI Extension: Allows you to present a custom authorization UI before the provisioning flow, often leveraging biometric authentication (Face ID/Touch ID) or other custom methods. This UI provides authentication of the user.
