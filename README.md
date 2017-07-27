# Cordova System Sound Plugin


This is a simple plugin to play sound for iOS. The main motivation for creating this plugin is to play DTMF feedback sound while using https://github.com/BasqueVoIPMafia/cordova-plugin-iosrtc. The dtmfSender interface in cordova-plugin-iosrtc does not give the users audio feedback. Other plugins out there does not take consideration of a voip call in session and end up taking over the audio.

## Installation

In your root Cordova project

```bash
$ cordova plugin add cordova-system-sound-services
```

## Usage

```
window.SystemSound.playSound('src-your-sound-file');
```
