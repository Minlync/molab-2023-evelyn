import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!

    @IBOutlet weak var scoreLabel: UILabel!

    var countries = [String]()
    var score = 0
    var correctAnswer = 0 /*random number*/

    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(image: UIImage(named: "1.png"))
              backgroundImage.contentMode = .scaleAspectFill // Adjust the content mode as needed
              backgroundImage.translatesAutoresizingMaskIntoConstraints = false
              
              // Add the background image view as the first subview to make it the background
              view.insertSubview(backgroundImage, at: 0)
              
              // Set up constraints to make the background image view fill the entire view
              NSLayoutConstraint.activate([
                  backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
                  backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                  backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                  backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor)
              ])
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1

        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor

        countries += ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
        askQuestion()

        // Create the titleLabel with custom font
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center

        if let customFont = UIFont(name: "Rosie Brown Serif Demo", size: 50) {
            // Create an attributed string with the custom font
            let attributes: [NSAttributedString.Key: Any] = [
                .font: customFont,
                .foregroundColor: UIColor.black // You can set the text color here
            ]
            let attributedTitle = NSAttributedString(string: countries[correctAnswer].uppercased(), attributes: attributes)

            // Assign the attributed text to the titleLabel
            titleLabel.attributedText = attributedTitle
        } else {
            titleLabel.font = UIFont.systemFont(ofSize: 50)
            titleLabel.text = countries[correctAnswer].uppercased()
        }

        // Add the titleLabel as a subview to the view controller's view
        self.view.addSubview(titleLabel)

        // Set up the score label
        scoreLabel.font = UIFont.systemFont(ofSize: 24) // Set the font size for the score label
        scoreLabel.text = "Score: 0" // Initial score

        // Add the score label as a subview
        view.addSubview(scoreLabel)

        // Configure constraints for the score label
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scoreLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60), // Adjust the constant as needed
            scoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        // Center the titleLabel both horizontally and vertically
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -280), // Adjust the constant as needed
        ])
    }

    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)

        // Update the title with the custom font
        if let titleLabel = view.subviews.first(where: { $0 is UILabel }) as? UILabel {
            if let customFont = UIFont(name: "Rosie Brown Serif Demo", size: 50) {
                // Create an attributed string with the custom font
                let attributes: [NSAttributedString.Key: Any] = [
                    .font: customFont,
                    .foregroundColor: UIColor.black // You can set the text color here
                ]
                let attributedTitle = NSAttributedString(string: countries[correctAnswer].uppercased(), attributes: attributes)

                // Assign the attributed text to the titleLabel
                titleLabel.attributedText = attributedTitle
            } else {
                titleLabel.font = UIFont.systemFont(ofSize: 50)
                titleLabel.text = countries[correctAnswer].uppercased()
            }
        }
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String

        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1

            // Update the score label
            scoreLabel.text = "Score: \(score)"
        } else {
            title = "Wrong"
            score -= 1
        }

        let ac = UIAlertController(title: title, message: "Your Score is \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac, animated: true)
    }
}
