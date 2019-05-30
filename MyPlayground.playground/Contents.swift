import UIKit

//Check if a binary tree is BST

class Node{
    var data: Int?
    var left: Node?
    var right: Node?
}

func isBST(root: Node?, min: Int, max: Int) -> Bool{
    if root == nil{
        return true
    }
    if (root!.data! <= min) || ((root?.data!)! > max){
        return false
    }
    
    return isBST(root: root?.left, min: min, max: root!.data!) && isBST(root: root?.right, min: root!.data!, max: max)
}

func Test(){
    let node1 = Node()
    let node2 = Node()
    let node3 = Node()
    let node4 = Node()
    let node5 = Node()
    let node6 = Node()
    let node7 = Node()
    
    node1.data = 50
    node1.left = node2
    node1.right = node3
    
    node2.data = 30
    node2.left = node4
    node2.right = node5
    
    node3.data = 70
    node3.left = node6
    node3.right = node7
    
    node4.data = 20
    node4.left = nil
    node4.right = nil
    
    node5.data = 40
    node5.left = nil
    node5.right = nil
    
    node6.data = 60
    node6.left = nil
    node6.right = nil
    
    node7.data = 20
    node7.left = nil
    node7.right = nil
    
    let result = isBST(root: node1, min: 0, max: 100)
    print(result)
}

Test()
