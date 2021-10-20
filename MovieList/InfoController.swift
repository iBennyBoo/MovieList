import UIKit

class InfoController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    var baby: Int = 0
    var movies: [InfoClass] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.layer.borderWidth = 1
        infoLabel.layer.borderWidth = 1
        infoLabel.text = movies[movies.count - 1].returnText()
        titleLabel.text = movies[movies.count - 1].toString()
    }
    

}
