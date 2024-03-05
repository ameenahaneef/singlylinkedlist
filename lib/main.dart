class Node{
  int? data;
  Node? next;
  Node(this.data);
}
class LinkedList{
  Node? head;
  Node? tail;
  
  void append(int data){
    Node newNode=Node(data);
    if(head==null){
      head=newNode;
    }else{
      tail?.next=newNode;
    }
    tail=newNode;
 }
  void prepend(int data){
    Node newNode=Node(data);
    if(head==null){
      head=newNode;
      return;
    }
    
    newNode.next=head;
   head=newNode;
    
  
  }
  void deleteValue(int data){
    Node? temp=head,prev;
    if(temp!=null&&temp.data==data){
      head=temp.next;
    }
    while(temp!=null&&temp.data!=data){
      prev=temp;
      temp=temp.next;
    }
      if(temp==null){
        return;
      }
      if(temp==tail){
        tail=prev;
        tail?.next=null;
        return;
      }
     
     prev?.next=temp.next;
  }
  
  void display(){
    Node? temp=head;
    while(temp!=null){
      print(temp.data);
      temp=temp.next;
      
    }
  }
  void removeDuplicates(){
    Node? current=head;
    while(current!=null){
      Node? next=current.next;
      while(next!=null&&next.data==current.data){
        next=next.next;

      }
      current.next=next;
      if(next==tail&&current.data==next?.data){
        tail=current;

      }
      current=next;
    }
  }
}
void main(){
  LinkedList list=LinkedList();
  list.append(10);
  list.append(20);
  list.append(20);
  list.append(20);
  list.append(30);
  list.deleteValue(30);
  list.removeDuplicates();
  list.display();
}