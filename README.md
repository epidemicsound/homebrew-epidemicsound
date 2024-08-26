# Homebrew-epidemic

This is a private tap for Homebrew. Use it to distribute external tools required for development.

## Using

Run the following command to add this tap to your brew installation
```
brew tap epidemicsound/epidemicsound
```

To refresh the tap configuration force a brew update using ```HOMEBREW_AUTO_UPDATE_SECS```.
This is mainly needed during development of this tap.
```
HOMEBREW_AUTO_UPDATE_SECS=0 brew tap epidemicsound/epidemicsound
```


## Adding more tools

- Add the dependecy to ```Formula/e/epidemicsound.rb```
- Push and merge the PR
- Create a new release
- Update the version path in epidemicsound.rb
- Push and merge the PR
- ```brew upgrade epidemicsound```

## Useful links

- https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap
- https://docs.brew.sh/Taps
- https://docs.brew.sh/Formula-Cookbook
