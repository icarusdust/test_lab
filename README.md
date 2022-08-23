# inegrate

xcodebuild -workspace Runner.xcworkspace -scheme Runner -config Flutter/Release.xcconfig -derivedDataPath ./build/ios_integ -sdk iphoneos build-for-testing

pushd ./build/ios_integ/Build/Products
zip -r "ios_tests.zip" "Release-iphoneos" "Runner_iphoneos15.5-arm64.xctestrun"
popd