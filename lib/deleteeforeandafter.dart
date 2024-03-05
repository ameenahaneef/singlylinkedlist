class Node{
  Node? next;
  int? data;
  Node(this.data);
}
class LinkedList{
  Node? head;
  Node? tail;


  void addNode(int data){
    Node newNode=Node(data);
    Node?temp=head;
    if(temp==null){
      head=newNode;
      }else{
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
void deleteAfter(int afterTo){
  Node? temp=head;
 
  while(temp!=null&&temp.data!=afterTo){
  
    temp=temp.next;
   
  }
  if(temp==null&&temp==tail){
    return;
  }
  temp?.next=temp.next?.next;

  
 
}
 void deleteBefore(int beforeTo){
  Node? temp=head,prev,prevs;
  if(temp!=null&&temp.data==beforeTo){
   
    return;
  }
  if(temp?.next?.data==beforeTo){
    head=temp?.next;
  }
  
  while(temp!=null&&temp.data!=beforeTo){
    prevs=prev;
    prev=temp;
    temp=temp.next;
  }
  if(temp==null){
    return;
  }
  if(temp==tail){
 prevs?.next=temp;
   }
prevs?.next=temp;

 }
 void reverse(){
  Node? prev=null;
  Node? currentNode=head;
  Node? nextNode=head;
  while(currentNode!=null){
    nextNode=currentNode.next;
    currentNode.next=prev;
    prev=currentNode;
    currentNode=nextNode;

  }
  head=prev;
 }
 void findMiddle(){

  if(head==null){
    return;
  }
  Node? slowPointer=head;
  Node? fastPointer=head;

  while(fastPointer!=null&&fastPointer.next!=null){
    slowPointer=slowPointer?.next;
    fastPointer=fastPointer.next?.next;

  }
  print('middleelementis${slowPointer?.data}');
  
 }

}
void main(){
  LinkedList list=LinkedList();


  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);

 
 // list.reverse();
  //list.deleteAfter(10);
 // list.deleteBefore(20);
  list.display();
   list.findMiddle();
}