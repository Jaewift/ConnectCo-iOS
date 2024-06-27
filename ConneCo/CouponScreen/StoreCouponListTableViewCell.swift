//
//  StoreCouponListTableViewCell.swift
//  ConneCo
//
//  Created by jaegu park on 5/15/24.
//

import UIKit

class StoreCouponListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var couponImage: UIImageView!
    @IBOutlet weak var couponStore: UILabel!
    @IBOutlet weak var couponName: UILabel!
    @IBOutlet weak var couponDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension StoreDetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return couponImages.count
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
        let cell: StoreCouponListTableViewCell = tableView.dequeueReusableCell(withIdentifier: "StoreCouponList_TableViewCell", for: indexPath) as! StoreCouponListTableViewCell
        
        cell.couponImage.image = UIImage(named: couponImages[indexPath.section])
        cell.couponStore.text = "\(couponStores[indexPath.section])"
        cell.couponName.text = "\(couponNames[indexPath.section])"
        cell.couponDate.text = "\(couponDates[indexPath.section])"
        
        return cell
    }
}
