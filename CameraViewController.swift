//
//  CameraViewController.swift
//  dogCapture
//
//  Created by Allison Schultz on 8/10/17.
//  Copyright © 2017 pupVenture. All rights reserved.
//

import UIKit
import AVFoundation

class CameraViewController: UIViewController{
    
    
    @IBOutlet weak var cameraView: UIView!
    
    let captureSession = AVCaptureSession()
    var captureDevice:AVCaptureDevice?
    var previewLayer:AVCaptureVideoPreviewLayer?
    var frontCamera:Bool = false
    var stillImageOutput:AVCapturePhotoOutput = AVCapturePhotoOutput()
    var takePhoto = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        captureSession.sessionPreset = AVCaptureSessionPresetPhoto
        cameraLocation(frontCamera)
        if captureDevice != nil {
            beginSession()
        }
        
    }
    
    func beginSession() {
        
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        self.cameraView.layer.addSublayer(previewLayer!)
        previewLayer?.frame = self.cameraView.layer.bounds
        previewLayer?.videoGravity = AVLayerVideoGravityResizeAspectFill
        captureSession.startRunning()
//        stillImageOutput.outputSettings = [AVVideoCodecKey:AVVideoCodecJPEG]
        if captureSession.canAddOutput(stillImageOutput) {
            captureSession.addOutput(stillImageOutput)
        }
        
    }
    
    func cameraLocation(_ front: Bool) {
        let devices = AVCaptureDevice.devices()
        do{
            try captureSession.removeInput(AVCaptureDeviceInput(device: captureDevice))
        }catch{print("error")}
        
        for device in devices! {
            if((device as AnyObject).hasMediaType(AVMediaTypeVideo)) {
                if front {
                    if (device as AnyObject).position == AVCaptureDevicePosition.front {
                  captureDevice = device as? AVCaptureDevice
                    do {
                        try captureSession.addInput(AVCaptureDeviceInput(device:captureDevice))
                    }catch{}
                    break
                }
            }else {
                    if (device as AnyObject).position == AVCaptureDevicePosition.back {
                        captureDevice = device as? AVCaptureDevice
                        do {
                            try captureSession.addInput(AVCaptureDeviceInput(device:captureDevice))
                        }catch{}
                        break
                    }
                }
            }
        }
    }
    
    

    func captureOutput(_ captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!) {
        if takePhoto {
            takePhoto = false
        }
    }
    
    
    @IBAction func shutterButton(_ sender: Any) {
        takePhoto = true
    }
    
    @IBAction func selectCameraButton(_ sender: Any) {
    }
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
