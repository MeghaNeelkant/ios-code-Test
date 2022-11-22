//iOS Code Test
//Task 1
//Please consider the code snippet below,

import UIKit
import Foundation

struct CartProductResult {
 var id: Int
 var title: String
 var quantity: Int
}
let cartProducts = [
 CartProductResult(id: 1, title: "nike shoe 1", quantity: 5),
 CartProductResult(id: 2, title: "nike shoe 2", quantity: 2),
 CartProductResult(id: 3, title: "soap", quantity: 6)
]

// Write the code that will produce the output as seen in Output:1-1 using the code from the
//snippet above in Code:1-1
/// Print `cartProducts` in this format as specified:
/// * id1-title1
/// * id2-title2
/// * id3-title3

// Solution

for cartProduct in cartProducts {
    print("id\(cartProduct.id)")
    print("title\(cartProduct.title)")
    
}


// Task 2
//Consider the code snippet below,

struct SearchProductResult {
 var id: Int
 var title: String
 var position: Int
}
let productList: [SearchProductResult] = [
 SearchProductResult(id: 1, title: "nike shoe 3", position: 1),
 SearchProductResult(id: 5, title: "pen", position: 2)
]

//Code: 2-1
//Implement a function called printProducts that will print the contents of
//productList or cartProducts in the same format as seen in Output: 1-1.
//printProducts(cartProducts)
//printProducts(productList)


// Solution
print("cartProducts List")
for cartProduct in cartProducts {
    print("\(cartProduct)")
}

print("product List")
for productList in productList {
    print("\(productList)")
}


//Task 3
//Consider the code snippet below,

func printWithDelay(product1: CartProductResult, product2: CartProductResult, completion: (@escaping ()-> Void)) {
    
    completion()
}

func printWithDelay(products: [CartProductResult], completion: (@escaping ()-> Void)) {
    for product in products {
        let seconds = 1.0
        sleep(1)
        print("  Wait 1 second")
        print("id of the product :\(product.id)")
    }
    completion()
}

printWithDelay(product1: cartProducts[0], product2: cartProducts[1]) {
    print("Done printing products")
}


//Task 4
//Consider the code snippet below,
let json = """
{
  "id": "1",
  "options": [
    {
      "id": "11",
      "options": [
        {
          "id": "111",
          "options": []
} ]
}, {
      "id": "2",
      "options": [
        {
          "id": "21",
          "options": []
}, {
          "id": "22",
          "options": [
            {
              "id": "221",
              "options": []
} ]
} ]
} ]
/} """

//Code: 4-1
//Write code that will create the appropriate object from the above string and then list out all the ID’s
