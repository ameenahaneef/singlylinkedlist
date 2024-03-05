class Node{
  Node?next;
  int? data;
  Node(this.data);
}
class LinkedList{
  Node? head;
  Node? tail;


  void addNode(data){
    Node newNode=Node(data);
    Node? temp=head;
    if(temp==null){
      head=newNode;

    }
    else{
      tail?.next=newNode;
    }
    tail=newNode;
  }
  void display(){
    Node? temp=head;
    while(temp!=null){
      print(temp.data);
      temp=temp.next;
    }
  }



void insertBefore(int beforeTo,int data){
  Node newNode=Node(data);
  Node? temp=head,prev;
  if(temp!=null&&temp.data==beforeTo){
    
    newNode.next=temp;
    head=newNode;
    return;
    }
    while(temp!=null&&temp.data!=beforeTo){
      prev=temp;
      temp=temp.next;

    }
    if(temp==null){
      return;
    }
    if(temp==tail){
      prev?.next=newNode;
      newNode.next=temp;
    }

    prev?.next=newNode;
    newNode.next=temp;
}

void insertAfter(int afterTo,int data){
  Node newNode=Node(data);
  Node? temp=head;
 
  while(temp!=null&&temp.data!=afterTo){
    temp=temp.next;
    
    
  }
  if (temp==null){
    return;
  }
  if(temp==tail){
    tail?.next=newNode;
    tail=newNode;
    return;
  }
   
  newNode.next=temp.next;
  temp.next=newNode;
 
  
}
}

void main(){
  LinkedList list=LinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  
  list.insertAfter(20, 0);
  list.display();
}