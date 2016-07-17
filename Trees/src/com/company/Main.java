package com.company;

public class Main {

    public static void main(String[] args) {

        Node node1 = new Node(1);
        Node node2 = new Node(2);
        Node node3 = new Node(3);
        Node node4 = new Node(4);
        Node node5 = new Node(5);

        node1.left = node2;
        node1.right = node3;
        node2.left = node4;
        node3.left = node5;
        System.out.println(node1.maxValue());

    }
}

class Node{
    int value;
    Node left, right;

    public Node(int value) {
        this.value = value;
    }

    public int maxValue(){
        return 0;
    }
}
