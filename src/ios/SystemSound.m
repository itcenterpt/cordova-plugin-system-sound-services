#import "SystemSound.h"
#import <Cordova/CDVAvailability.h>

@import AVFoundation;

@interface SystemSound () <AVAudioPlayerDelegate>

@property (strong, nonatomic) AVAudioSession *audioSession;
@property (strong, nonatomic) AVAudioPlayer *player;

@end

@implementation SystemSound

- (void)pluginInitialize {}

- (void)playSound:(CDVInvokedUrlCommand *)command {

    NSString* fullFileName = [command.arguments objectAtIndex:0];
    NSURL *audioUrl = [NSURL fileURLWithPath:fullFileName];

    self.audioSession = [AVAudioSession sharedInstance];
    [self.audioSession setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:AVAudioSessionCategoryOptionDuckOthers error:nil];
    [self.audioSession setMode:AVAudioSessionModeVoiceChat error:nil];
    [self.audioSession setActive:YES error:nil];

    self.player = [[AVAudioPlayer alloc]initWithContentsOfURL:audioUrl error:nil];
    self.player.delegate = self;
    [self.player setVolume: 1.0];
    [self.player prepareToPlay];
    [self.player play];

}

@end
