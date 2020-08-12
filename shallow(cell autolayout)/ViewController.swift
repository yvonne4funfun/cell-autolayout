//
//  ViewController.swift
//  shallow(cell autolayout)
//
//  Created by fun on 2020/8/12.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    let lyrics = [ Lyrics(text: "Tell me somethin' girl. Are you happy in this modern world? Or do you need more? Is there somethin' else you’re searchin' for?", name: "Bradley"), Lyrics(text: "Tell me something boy. Aren’t you tired tryin' to fill that void? Or do you need more? Ain’t it hard keeping it so hardcore? ", name: "Lady Gaga"), Lyrics(text: "I’m falling. In all the good times I find myself longin' for change.", name: "Bradley"), Lyrics(text: "And in the bad times I fear myself", name: "Bradley"), Lyrics(text: "I’m off the deep end, watch as I dive in", name: "Lady Gaga"), Lyrics(text: "We’re far from the shallow now.", name: "Lady Gaga"), Lyrics(text: "In the shallow, shallow", name: "Bradley"), Lyrics(text: "IIn the shallow, shallow", name: "Bradley"), Lyrics(text: "In the shallow, shallow", name: "Lady Gaga"), Lyrics(text: "JIn the shallow, shallow", name: "Bradley") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let bXib = UINib(nibName: "BTableViewCell", bundle: nil)
        tableView.register(bXib, forCellReuseIdentifier: "B")
        let lXib = UINib(nibName: "LTableViewCell", bundle: nil)
        tableView.register(lXib, forCellReuseIdentifier: "L")
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        lyrics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let showLyrics = lyrics[indexPath.row]
        
        if showLyrics.name == "Bradley" {
            
            let btCell = tableView.dequeueReusableCell(withIdentifier: "B", for: indexPath) as! BTableViewCell
            btCell.BTextView?.text = showLyrics.text
            
            return btCell
            
        } else {
            
            let LCell = tableView.dequeueReusableCell(withIdentifier: "L", for: indexPath) as! LTableViewCell
            LCell.LTextView?.text = showLyrics.text
            
            return LCell
            
        }
        
        
        
    }
    
    
    }



