/********* MathCalculator.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface MathCalculator : CDVPlugin {
  // Member variables go here.
}

// - (void)coolMethod:(CDVInvokedUrlCommand*)command;
- (void)addMethod:(CDVInvokedUrlCommand*)command;
- (void)substractMethod:(CDVInvokedUrlCommand*)command;
@end

@implementation MathCalculator

// - (void)coolMethod:(CDVInvokedUrlCommand*)command
// {
//     CDVPluginResult* pluginResult = nil;
//     NSString* echo = [command.arguments objectAtIndex:0];

//     if (echo != nil && [echo length] > 0) {
//         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
//     } else {
//         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
//     }

//     [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
// }

- (void)addMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSNumber* param1 = [[command.arguments. objectAtIndex:0] valueForKey:@"param1"];
    NSNumber* param2 = [[command.arguments. objectAtIndex:0] valueForKey:@"param2"];

    if(param1 >= 0 && param2 >= 0) {
        NSString* total = @(param1 + param2);
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)substractMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSNumber* param1 = [[command.arguments. objectAtIndex:0] valueForKey:@"param1"];
    NSNumber* param2 = [[command.arguments. objectAtIndex:0] valueForKey:@"param2"];

    if(param1 >= 0 && param2 >= 0) {
        NSString* total = @(param1 - param2);
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
@end
