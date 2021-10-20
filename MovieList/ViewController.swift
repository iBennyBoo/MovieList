import UIKit
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var movies: [String] = ["Paddington 2", "Karen", "Cars 2", "Pixels", "The Irishman", "Garfield", "Garfield: A Tale of Two Kitties", "Garfield 3: Paris Most Wanted", "Shrek", "Shrek 2", "Shrek 3", "Shrek 4"]
    var list: [InfoClass] = []
    
    var years: [Int] = [2018, 2021, 2011, 2015, 2019, 2004, 2006, 2021, 2001, 2004, 2007, 2010]
    var ratings: [Int] = [99, 17, 40, 18, 95, 15, 12, 100, 88, 89, 42, 58]
    var images: [String] = ["paddington_2", "karen", "Cars_2", "pixels", "irishman", "garfield", "garfield_2", "garfield_3", "shrek", "shrek_2", "shrek_3", "shrek_4"]
    
    var selectedMovie = ""
    var num: Int = 14
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.dataSource = self
        tableViewOutlet.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell")! //as! CoolCell
        //cell.configure(name: movies[indexPath.row], rating: ratings[indexPath.row], year: years[indexPath.row], image: images[indexPath.row])
        cell.textLabel?.text = movies[indexPath.row]
        cell.detailTextLabel?.text = "Information"
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let blah = tableView.cellForRow(at: indexPath)?.textLabel?.text{
            selectedMovie = blah
            print(selectedMovie)
            
        }
    }
    
    //Add Rows
    @IBAction func addButton(_ sender: UIBarButtonItem) {
            movies.append(textFieldOutlet.text!)
            tableViewOutlet.reloadData()
            textFieldOutlet.text = ""
    }
    
    //Delete Rows
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if(editingStyle == .delete){
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    @IBAction func reportButton(_ sender: UIBarButtonItem) {
        var shawty = InfoClass.init(name: selectedMovie)
        list.append(shawty)
        performSegue(withIdentifier: "toInfo", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "toInfo"){
            let nvc = segue.destination as! InfoController
            nvc.baby = num
            nvc.movies = list
        } else{
            
        }
    
}
}
