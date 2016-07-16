//
//  ViewController.swift
//  WebServer
//
//  Created by D_ttang on 15/12/2.
//  Copyright © 2015年 D_ttang. All rights reserved.
//

import UIKit
import GCDWebServer
//import GCDWebUploader

class ViewController: UIViewController {

    var webServer: GCDWebUploader?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let webServer = GCDWebServer()
////        GCDWebUploader()
//        
//        webServer.addDefaultHandlerForMethod("GET", requestClass: GCDWebServerRequest.self, processBlock: {request in
//            return GCDWebServerDataResponse(HTML:"<html><body><p>Hello World</p></body></html>")
//            
//        })
//        
//        webServer.startWithPort(8080, bonjourName: "GCD Web Server")
//        
//        print("Visit \(webServer.serverURL) in your web browser")
        

        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true).first
        let a = GCDWebUploader()
        print(a)
        
        print(a == nil)
        webServer = GCDWebUploader(uploadDirectory: documentsPath)
        webServer?.delegate = self

        print(webServer)
        print(webServer?.startWithPort(8080, bonjourName: "GCD Web Server"))
//        if webServer?.start() == true {
//            print("start")
//        }else {
//            print("fail...")
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: GCDWebUploaderDelegate {
    func webUploader(uploader: GCDWebUploader!, didMoveItemFromPath fromPath: String!, toPath: String!) {
        
    }
    
    func webUploader(uploader: GCDWebUploader!, didUploadFileAtPath path: String!) {
        
    }
    
    func webUploader(uploader: GCDWebUploader!, didCreateDirectoryAtPath path: String!) {
        
    }
    
    func webUploader(uploader: GCDWebUploader!, didDeleteItemAtPath path: String!) {
        
    }
}

//NSString* documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
//NSLog(@"%@", documentsPath);
//_webServer = [[GCDWebUploader alloc] initWithUploadDirectory:documentsPath];
//_webServer.delegate = self;
//_webServer.allowHiddenItems = YES;
//if ([_webServer start]) {
//    _label.text = [NSString stringWithFormat:NSLocalizedString(@"GCDWebServer running locally on port %i", nil), (int)_webServer.port];
//} else {
//    _label.text = NSLocalizedString(@"GCDWebServer not running!", nil);
//}
//}
//
//- (void)viewDidDisappear:(BOOL)animated {
//    [super viewDidDisappear:animated];
//    
//    [_webServer stop];
//    _webServer = nil;
//    }
//    
//    - (void)webUploader:(GCDWebUploader*)uploader didUploadFileAtPath:(NSString*)path {
//        NSLog(@"[UPLOAD] %@", path);
//        }
//        
//        - (void)webUploader:(GCDWebUploader*)uploader didMoveItemFromPath:(NSString*)fromPath toPath:(NSString*)toPath {
//            NSLog(@"[MOVE] %@ -> %@", fromPath, toPath);
//            }
//            
//            - (void)webUploader:(GCDWebUploader*)uploader didDeleteItemAtPath:(NSString*)path {
//                NSLog(@"[DELETE] %@", path);
//                }
//                
//                - (void)webUploader:(GCDWebUploader*)uploader didCreateDirectoryAtPath:(NSString*)path {
//                    NSLog(@"[CREATE] %@", path);
//}

