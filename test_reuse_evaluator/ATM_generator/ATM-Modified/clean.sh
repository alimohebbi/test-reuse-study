#!/bin/bash
cd /Users/usiusi/Documents/Repositories/AppTestMigrator/ATM-Modified
#rm -r /Users/usiusi/Documents/Repositories/AppTestMigrator/AppTestMigrator/AppTestMigrator/Espresso-UIHierarchies
rm -r ./AppTestMigrator/Espresso-UIHierarchies
rm -r ./AppTestMigrator/target-tests
rm -r ./AppTestMigrator/UIAutomator-UIHierarchies
rm -r ./AppTestMigrator/source-scenarios
rm -r ./AppTestMigrator/screenshots
rm ./AppTestMigrator/image_dict
rm ./AppTestMigrator/inputType_dict
rm ./AppTestMigrator/log
rm ./AppTestMigrator/activity_names
rm ./log.txt
rm ./db.json
rm -r ./AppTestMigrator/resources/androidTest 
rm -r ./AppTestMigrator/resources/AndroidManifest.xml
rm -r ./AppTestMigrator/resources/build.gradle


adb shell rm -r /sdcard/log
adb shell rm -r /sdcard/activity_names
adb shell rm -r /sdcard/UIAutomator-UIHierarchies
adb shell rm -r /sdcard/Espresso-UIHierarchies
adb shell rm -r /sdcard/TargetAppUIHierarchies
adb shell rm -r /sdcard/target-tests
adb shell rm -r /sdcard/screenshots
adb shell rm -r /sdcard/writeily
adb shell rm  /sdcard/coverage.exec
