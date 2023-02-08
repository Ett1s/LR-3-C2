type PNode = ^Node;
     Node = record
       data: integer;
       next: PNode;
     end;
type Queue = record
       head, tail: PNode;
     end;
     
var 
  f:text;
  g:text;
     
procedure PushTail( var Q: Queue; x: integer );
var NewNode: PNode;
begin
  New(NewNode);
  NewNode^.data := x;
  NewNode^.next := nil;
  if Q.tail <> nil then
    Q.tail^.next := NewNode;
  Q.tail := NewNode; 
  if Q.head = nil then Q.head := Q.tail;
end;

function Pop ( var S: Queue ): integer;
var top: PNode;
begin
  if Q.head = nil then begin
    Result := MaxInt;
    Exit;
  end;
  top := Q.head;
  Result := top^.data;
  Q.head := top^.next;
  if Q.head = nil then Q.tail := nil;
  Dispose(top);
end;


begin
  assign(f,'text.txt')
  assign(g,'text2.txt')
end.