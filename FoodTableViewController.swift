//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Andrew Higbee on 10/14/23.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] {
        var sausage = Food(name: "Sausage", description: "")
        var oatmeal = Food(name: "Oatmeal", description: "")
        var pancakes = Food(name: "Pancakes", description: "")
        var sandwich = Food(name: "Sandwich", description: "")
        var salad = Food(name: "Salad", description: "")
        var pizza = Food(name: "Pizza", description: "")
        var porkroast = Food(name: "Pork Roast", description: "")
        var pasta = Food(name: "Pasta", description: "")
        var steak = Food(name: "Steak", description: "")
        var breakfast = Meal(name: "Breakfast", food: [sausage, oatmeal, pancakes])
        var lunch = Meal(name: "Lunch", food: [sandwich, salad, pizza])
        var dinner = Meal(name: "Dinner", food: [porkroast, pasta, steak])
        
        return [breakfast, lunch, dinner]
    }
    
    
//    var oatmeal = Food(name: "Oatmeal", description: "")
//    var sausage = Food(name: "Sausage", description: "")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        
        //meals[indexPath.section]
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.description
        cell.contentConfiguration = content
        
        return cell
        
//        var content = cell.defaultContentConfiguration()
//        content.text = "\(emoji.symbol) - \(emoji.name)"
//        content.secondaryText = emoji.description
//        cell.contentConfiguration = content
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

    
}
