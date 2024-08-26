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
- Bump the revision to trigger upgrades without a new release
- Force upgrade tap ```HOMEBREW_AUTO_UPDATE_SECS=0 brew tap epidemicsound/epidemicsound```
- Test the latest version ```brew upgrade epidemicsound```
    - if it fails revert the PR to roll back to previous known state

## Adding a missing Formula

If the tool you are using don' have a formula or cask then you can add one. In general you
follow the homebrew guide but also pass ```--tap epidemicsound/epidemicsound``` to ```brew create```.

Ex. protoc-gen-connect-go
- ```brew create --go https://github.com/connectrpc/connect-go/archive/refs/tags/v1.16.2.tar.gz --tap epidemicsound/epidemicsound --set-name=protoc-gen-connect-go```
    - the url refers to the source code release on github
    - --go emits a formula that builds go code
    - --set-name sets a name that matches the command
    - --tap epidemicsound/epidemicsound ouputs the formula in the epidemicsound tap
        - ```/opt/homebrew/Library/Taps/epidemicsound/homebrew-epidemicsound/Formula/protoc-gen-connect-go.rb```
- copy this formula into the Formula directory of this repo (with a corresponding prefix directory)
    - ```Formula/p/protoc-gen-connect-go```
- update the formula to build the cmd/protoc-gen-connect-go directory
- add it as a depedency to the ```Formula/e/epidemicsound.rb``` and bump the revision
- when a new version is released update the url of the formula

## Useful links

- https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap
- https://docs.brew.sh/Taps
- https://docs.brew.sh/Formula-Cookbook
