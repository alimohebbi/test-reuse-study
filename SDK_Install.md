## SDK
1. Download command line tools ([download link](https://developer.android.com/studio#command-tools))
1. Set environment variables in ~/.bashrc
   ```
   export ANDROID_SDK_ROOT = Path to an empty folder that you want install sdk there
   export ANDROID_HOME = The same path as ANDROID_SDK_ROOT
   ``` 
1. Unzip command line tool in `$ANDROID_SDK_ROOT/cmdline-tools/latest`. Create `cmdline-tools` and `latest` folders manually.
1. Give permission to download packages
   ```
   sudo chown -R $USER: $ANDROID_HOME
   ```
1. Run at latest/bin
   ```
   sdkmanager --licenses
   ./sdkmanager platform-tools emulator
   ```
   > Java version should be compatible with the command sdk manger. We used Java 8.

1. Add to path variable
   ```
   PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/build-tools/25.0.3/
   ```
   In Zsh you may use:
   ```shell
   PATH=$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/build-tools/25.0.3/:$PATH
   ```

1. Install platform packages that are listed below. They are required to compile your subject applications.
   ```
   sdkmanager "platforms;android-25"
   sdkmanager "platforms;android-23"
   sdkmanager "platforms;android-21"
   ```

## Emulator

You can see all packages as follows `sdkmanager --list`


1. Install an image for the emulator

    ```
    # sdkmanager --install [image name]
    sdkmanager --install "system-images;android-23;default;x86"
    ```
Check the installation by `sdkmanager --list_installed`
> You can uninstall packages as follow
Uninstall by `sdkmanager --uninstall [image name]`

1. Install build tools: They are necessary to build your Android apps
```
sdkmanager "build-tools;25.0.3"
```

1. Find a proper device. `id: 9 or "Nexus 6P"` is ok.
```
avdmanager list devices
```

1. Create an emulator
```
# avdmanager create avd --name [emulator name] --package "[image name] -d [device name or id]"
avdmanager create avd --name emulator1 --package "system-images;android-23;default;x86" -d 9
```
> You can see list of availabe avds by:
```
 avdmanager list avd
```

1. Run the emulator
```
emulator -ports 5554,5555 -avd emulator1 -no-window -no-audio -partition-size 5120
```
> If you want to delete an emulator:
```
avdmanager delete avd -n [name of emulator]
```

### Test the setup
Check adb:
```
run adb server 
adb start-server
```


For special cases you may need to run this once
```
sudo setfacl -m u:<user>:rwx /dev/kvm
```
