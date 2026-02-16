# Sales Recorder
This is a React Native application built with TypeScript, following a TDD (Test-Driven Development) approach.

## Prerequisites

Before you begin, ensure you have the following installed on your local machine:

- **Node.js** (>=18)
- **Yarn**
- **Watchman** (recommended for macOS)
- **For iOS development:**
  - Xcode (Install via App Store or [developer.apple.com](https://developer.apple.com/xcode/))
  - **Important:** A full installation of Xcode is required to run the iOS Simulator. If you only have Command Line Tools installed, `yarn ios` will fail with "iOS devices or simulators not detected".
    - open Xcode → Settings (or Preferences) → Platforms and download an iOS Simulator runtime.
  - Ensure Command Line Tools are correctly configured. If you have Xcode installed, run:
    ```bash
    sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
    ```
    *Note: If your Xcode is installed in a different location, adjust the path accordingly. If you only have Command Line Tools installed, `xcode-select -p` should point to `/Library/Developer/CommandLineTools`.*
  - Verify the simulator tooling sees devices `xcrun simctl list devices`
  - If you run into isssues running the simulator,try running `npx react-native doctor`
  - CocoaPods (`sudo gem install cocoapods`)
  - After that, `xcrun simctl list` should show devices, and your React Native/Expo iOS simulator runs should work.
  - Download and install a simulator.  Open Xcode and to go Components and add a Platform
  - **Troubleshooting "iOS devices or simulators not detected":**
    1. Open Xcode.
    2. Go to **Settings > Platforms**.
    3. Ensure an iOS SDK is installed.
    4. Go to **Settings > Locations** and ensure the Command Line Tools dropdown selects your Xcode version.
    5. Run `xcrun simctl list runtimes` to verify available iOS runtimes.
    6. Run `xcrun simctl list devices` to see available simulators. If none exist, create one in Xcode (Window > Devices and Simulators).
- **For Android development:**
  - Android Studio
  - Android SDK and Virtual Device (Emulator)

## Getting Started

### 1. Install Dependencies

```bash
yarn install
```

### 2. Install iOS Pods (macOS only)

```bash
cd ios && pod install && cd ..
```

## Running the Application

### Start the Metro Bundler

The Metro bundler is the JavaScript bundler for React Native. Start it in its own terminal window:

```bash
yarn start
```

### Run on iOS

In a new terminal window, run:

```bash
yarn ios
```

*Note: This will attempt to launch the iOS Simulator.*

### Run on Android

In a new terminal window, run:

```bash
yarn android
```

*Note: This will attempt to launch the Android Emulator.*

## Testing

This project uses **Jest** and **React Native Testing Library**.

To run all tests:

```bash
yarn test
```

To run tests in watch mode:

```bash
yarn test --watch
```

## Project Structure

- `App.tsx`: Main application component.
- `index.js`: App entry point.
- `__tests__/`: Contains unit and UI tests.
- `ios/` & `android/`: Native project folders.
- `app.json`: Application metadata.
