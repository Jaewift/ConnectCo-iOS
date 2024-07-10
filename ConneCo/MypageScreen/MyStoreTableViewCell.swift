//
//  MyStoreTableViewCell.swift
//  ConneCo
//
//  Created by jaegu park on 5/3/24.
//

import UIKit

class MyStoreTableViewCell: UITableViewCell {
    
    @IBOutlet weak var storeImage: UIImageView!
    @IBOutlet weak var storeName: UILabel!
    @IBOutlet weak var storeDescription: UILabel!
    @IBOutlet weak var storeAddress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MyStoreViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let something4 = UIStoryboard.init(name: "Coupon", bundle: nil)
        guard let rvc = something4.instantiateViewController(withIdentifier: "StoreDetailVC") as? StoreDetailViewController else {return}
        
        // 화면이동
        self.navigationController?.pushViewController(rvc, animated: true)
    }
            
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 81
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        .leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyStoreTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MyStore_TableViewCell", for: indexPath) as! MyStoreTableViewCell
        
        cell.selectionStyle = .none
        
        cell.storeImage.image = self.store_Image
        cell.storeName.text = self.store_Name
        cell.storeDescription.text = self.store_Description
        cell.storeAddress.text = self.store_Address
        
        return cell
    }
}
