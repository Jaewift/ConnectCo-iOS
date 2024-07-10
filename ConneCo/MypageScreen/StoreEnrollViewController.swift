//
//  StoreEnrollViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/5/24.
//

import UIKit

protocol SampleProtocol6 {
    func imageEnroll(data: UIImage)
    func nameEnroll(data: String)
    func addressEnroll(data: String)
    func numberEnroll(data: String)
    func hourEnroll(data: String)
    func descriptionEnroll(data: String)
}

class StoreEnrollViewController: UIViewController, SampleProtocol4, UITextFieldDelegate, UITextViewDelegate {
    
    let imagePickerController = UIImagePickerController()
    
    var storeData: StoreResultModel!
    
    var delegate : SampleProtocol6?
    
    func addressSend(data: String) {
        addressTextField.text = data
        addressTextField.sizeToFit()
    }
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var fifthImageView: UIImageView!
    @IBOutlet weak var CameraButton: UIButton!
    @IBOutlet weak var ImageLabel1: UILabel!
    @IBOutlet weak var searchButton: UIButton!

    @IBOutlet weak var storeNameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var storeNumberTextField: UITextField!
    @IBOutlet weak var workingHourTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enrollAlertEvent()
        
        addressTextField.delegate = self
        
        storeNameTextField.layer.cornerRadius = 5
        storeNameTextField.layer.borderWidth = 1
        storeNameTextField.layer.borderColor = UIColor.gray.cgColor
        addressTextField.layer.cornerRadius = 5
        addressTextField.layer.borderWidth = 1
        addressTextField.layer.borderColor = UIColor.gray.cgColor
        storeNumberTextField.layer.cornerRadius = 5
        storeNumberTextField.layer.borderWidth = 1
        storeNumberTextField.layer.borderColor = UIColor.gray.cgColor
        workingHourTextField.layer.cornerRadius = 5
        workingHourTextField.layer.borderWidth = 1
        workingHourTextField.layer.borderColor = UIColor.gray.cgColor
        descriptionTextField.layer.cornerRadius = 5
        descriptionTextField.layer.borderWidth = 1
        descriptionTextField.layer.borderColor = UIColor.gray.cgColor
        
        placeholderSetting()
        
        self.imagePickerController.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
        NotificationCenter.default.post(name: NSNotification.Name("DismissDetailView"), object: nil, userInfo: nil)
    }
    
    func placeholderSetting() {
        descriptionTextField.delegate = self // txtvReview가 유저가 선언한 outlet
        descriptionTextField.text = "커넥코에 업로드 될 가게 세부 정보를 입력해주세요.\n설명이 자세할수록 더 많은 협찬 신청이 들어와요!"
        descriptionTextField.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 14.0)
        descriptionTextField.textColor = UIColor.systemGray
    }
    
    func enrollAlertEvent() {
        let photoLibraryAlertAction = UIAlertAction(title: "앨범에서 사진 선택", style: .default) {
            (action) in
            self.openAlbum() // 아래에서 설명 예정.
        }
        
        let cameraAlertAction = UIAlertAction(title: "사진 촬영", style: .default) {
            (action) in
            self.openCamera() // 아래에서 설명 예정.
        }
    }
    
    @IBAction func camera_Tapped(_ sender: Any) {
        openAlbum()
    }
    
    @IBAction func Image_Delete(_ sender: Any) {
        firstImageView.image = UIImage(named: "ConneCo_Store_Default")
        CameraButton.isEnabled = true
        CameraButton.isHidden = false
        ImageLabel1.isHidden = false
    }
    
    @IBAction func addressButton(_ sender: Any) {
        guard let svc2 = self.storyboard?.instantiateViewController(identifier: "StoreAddressVC") as? StoreAddressViewController else {
            return
        }
        svc2.delegate = self
        
        self.present(svc2, animated: true)
    }
    
    @IBAction func Enroll_Complete(_ sender: Any) {
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
//            let parmeterDatas = StoreModel(storeImages: [" "], request: [StoreInfo(name: " ", address: " ", storeNumber: " ", operatingTime: " ", description: " ")])
//            APIStorePost.instance.SendingPostReborn(parameters: parmeterDatas) { result in self.storeData = result }
//            self.presentingViewController?.dismiss(animated: true, completion: nil)
//        }
        delegate?.imageEnroll(data: firstImageView.image!)
        delegate?.nameEnroll(data: storeNameTextField.text ?? "")
        delegate?.addressEnroll(data: addressTextField.text ?? "")
        delegate?.numberEnroll(data: storeNumberTextField.text ?? "")
        delegate?.hourEnroll(data: workingHourTextField.text ?? "")
        delegate?.descriptionEnroll(data: descriptionTextField.text ?? "")
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func back_Button(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension StoreEnrollViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func openAlbum() {
        self.imagePickerController.sourceType = .photoLibrary
        present(self.imagePickerController, animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            firstImageView.image = image
            CameraButton.isEnabled = false
            CameraButton.isHidden = true
            ImageLabel1.isHidden = true
            print(image)
        } else {
            print("error detected in didFinishPickinMEdiaWithInfo method")
        }
        dismiss(animated: true, completion: nil)
    }
    
    func openCamera() {
        if (UIImagePickerController.isSourceTypeAvailable(.camera)) {
            self.imagePickerController.sourceType = .camera
            present(self.imagePickerController, animated: false, completion: nil)
        } else {
            print("Camera is not available as for now")
        }
    }
}
