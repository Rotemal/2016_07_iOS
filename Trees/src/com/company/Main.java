package com.company;

import java.util.HashMap;
import java.util.Map;

public class Main {

    public static void main(String[] args) {

        /*Node node1 = new Node(1);
        Node node2 = new Node(2);
        Node node3 = new Node(3);
        Node node4 = new Node(4);
        Node node5 = new Node(5);

        node1.left = node2;
        node1.right = node3;
        node2.left = node4;
        node3.left = node5;
        System.out.println(node1.maxValue());*/


        Map<String, Dog> users = new HashMap<>();
        users.put("snoopy", new Dog("poodle", "white"));
        users.put("dooby", new Dog("doberman", "black"));
        Dog d = users.get("dooby");

    }
}

class Dog{
    String breed;
    String furColor;

    public Dog(String breed, String furColor) {
        this.breed = breed;
        this.furColor = furColor;
    }
}

class Node{
    int value;
    Node left, right;

    public Node(int value) {
        this.value = value;
    }

    public int maxValue(){
        int max = value;
        if(right != null){
            int maxRight = right.maxValue();
            if(maxRight > max)
                max = maxRight;
        }
        if(left != null){
            int maxLeft = left.maxValue();
            if(maxLeft > max)
                max = maxLeft;
        }
        return max;
    }

    public int sum(){
        int sum = value;
        if(right != null){
            sum += right.sum();
        }
        if(left != null)
            sum+= left.sum();
        return sum;
    }


}
