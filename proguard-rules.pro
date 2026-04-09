name: Build Android APK

on:
  push:
    branches: [ "main" ]
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3

    - name: Setup Node.js
      uses: actions/setup-node@v3
      with:
        node-version: '18'

    - name: Setup Java
      uses: actions/setup-java@v3
      with:
        distribution: 'zulu'
        java-version: '17'

    - name: Install Dependencies
      run: npm install

    - name: Build Web App
      run: npm run build

    - name: Setup Android Platform
      run: |
        if [ ! -d "android" ]; then
          npx cap add android
        else
          npx cap sync android
        fi

    - name: Build APK
      working-directory: ./android
      run: |
        chmod +x gradlew
        ./gradlew assembleDebug

    - name: Upload APK
      uses: actions/upload-artifact@v3
      with:
        name: app-debug.apk
        path: android/app/build/outputs/apk/debug/app-debug.apk
