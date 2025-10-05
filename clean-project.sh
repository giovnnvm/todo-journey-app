rm -rf ~/Library/Developer/Xcode/DerivedData/*

pod cache clean --all > /dev/null/ 2>&1;
pod repo remove trunk > /dev/null/ 2>&1;

rm -rf Pods
rm -rf ~/Library/Caches/CocoaPods
rm -rf Podfile.lock

pod deintegrate
pod setup

rm -rf *.xcproject
rm -rf *.xcworkspace

xcodegen