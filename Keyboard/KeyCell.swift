import UIKit

class KeyCell: UICollectionViewCell {
    
    public lazy var textLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 15)
        view.textAlignment = .center
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    private func setup() {
        backgroundColor = .white
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 0.0
        layer.masksToBounds = false
        layer.cornerRadius = 4.0
        
        contentView.addSubview(textLabel)
        textLabel.pin(to: contentView)
        
//        let view = UIView()
//        view.backgroundColor = UIColor.groupTableViewBackground
//        view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
//        view.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
//        view.layer.shadowOpacity = 1.0
//        view.layer.shadowRadius = 0.0
//        view.layer.masksToBounds = false
//        view.layer.cornerRadius = 4.0
//        selectedBackgroundView = view
    }
    
}
