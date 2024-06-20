//
//  CompleteApplyCouponTableViewCell.swift
//  ConneCo
//
//  Created by jaegu park on 6/17/24.
//

import UIKit

class CompleteApplyCouponTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension CompleteApplyCouponViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 129
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        .leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CompleteApplyCouponTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CompleteApplyCoupon_TableViewCell", for: indexPath) as! CompleteApplyCouponTableViewCell
        
        return cell
    }
}
