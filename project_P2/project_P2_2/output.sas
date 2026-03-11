begin_version
3
end_version
begin_metric
1
end_metric
9
begin_variable
var0
-1
4
Atom carrier-at(carrier1, depot)
Atom carrier-at(carrier1, loc1)
Atom carrier-at(carrier1, loc2)
Atom carrier-at(carrier1, loc3)
end_variable
begin_variable
var1
-1
4
Atom drone-at(drone1, depot)
Atom drone-at(drone1, loc1)
Atom drone-at(drone1, loc2)
Atom drone-at(drone1, loc3)
end_variable
begin_variable
var2
-1
3
Atom crate-at(crate1, depot)
Atom in-carrier(crate1, carrier1)
<none of those>
end_variable
begin_variable
var3
-1
3
Atom crate-at(crate2, depot)
Atom in-carrier(crate2, carrier1)
<none of those>
end_variable
begin_variable
var4
-1
3
Atom crate-at(crate3, depot)
Atom in-carrier(crate3, carrier1)
<none of those>
end_variable
begin_variable
var5
-1
5
Atom crates-in-carrier(carrier1, n0)
Atom crates-in-carrier(carrier1, n1)
Atom crates-in-carrier(carrier1, n2)
Atom crates-in-carrier(carrier1, n3)
Atom crates-in-carrier(carrier1, n4)
end_variable
begin_variable
var6
-1
2
Atom has-content-person(person2, medicine)
NegatedAtom has-content-person(person2, medicine)
end_variable
begin_variable
var7
-1
2
Atom has-content-person(person3, food)
NegatedAtom has-content-person(person3, food)
end_variable
begin_variable
var8
-1
2
Atom has-content-person(person2, food)
NegatedAtom has-content-person(person2, food)
end_variable
0
begin_state
0
0
0
0
0
0
1
1
1
end_state
begin_goal
4
1 0
6 0
7 0
8 0
end_goal
60
begin_operator
move-carrier depot loc1 drone1 carrier1
0
2
0 0 0 1
0 1 0 1
223
end_operator
begin_operator
move-carrier depot loc2 drone1 carrier1
0
2
0 0 0 2
0 1 0 2
68
end_operator
begin_operator
move-carrier depot loc3 drone1 carrier1
0
2
0 0 0 3
0 1 0 3
182
end_operator
begin_operator
move-carrier loc1 depot drone1 carrier1
0
2
0 0 1 0
0 1 1 0
223
end_operator
begin_operator
move-carrier loc1 loc2 drone1 carrier1
0
2
0 0 1 2
0 1 1 2
189
end_operator
begin_operator
move-carrier loc1 loc3 drone1 carrier1
0
2
0 0 1 3
0 1 1 3
67
end_operator
begin_operator
move-carrier loc2 depot drone1 carrier1
0
2
0 0 2 0
0 1 2 0
68
end_operator
begin_operator
move-carrier loc2 loc1 drone1 carrier1
0
2
0 0 2 1
0 1 2 1
189
end_operator
begin_operator
move-carrier loc2 loc3 drone1 carrier1
0
2
0 0 2 3
0 1 2 3
134
end_operator
begin_operator
move-carrier loc3 depot drone1 carrier1
0
2
0 0 3 0
0 1 3 0
182
end_operator
begin_operator
move-carrier loc3 loc1 drone1 carrier1
0
2
0 0 3 1
0 1 3 1
67
end_operator
begin_operator
move-carrier loc3 loc2 drone1 carrier1
0
2
0 0 3 2
0 1 3 2
134
end_operator
begin_operator
pick-and-drop crate1 loc1 drone1 carrier1 person1 food n1 n0
2
0 1
1 1
2
0 2 1 2
0 5 1 0
1
end_operator
begin_operator
pick-and-drop crate1 loc1 drone1 carrier1 person1 food n2 n1
2
0 1
1 1
2
0 2 1 2
0 5 2 1
1
end_operator
begin_operator
pick-and-drop crate1 loc1 drone1 carrier1 person1 food n3 n2
2
0 1
1 1
2
0 2 1 2
0 5 3 2
1
end_operator
begin_operator
pick-and-drop crate1 loc1 drone1 carrier1 person1 food n4 n3
2
0 1
1 1
2
0 2 1 2
0 5 4 3
1
end_operator
begin_operator
pick-and-drop crate1 loc2 drone1 carrier1 person3 food n1 n0
2
0 2
1 2
3
0 2 1 2
0 5 1 0
0 7 -1 0
1
end_operator
begin_operator
pick-and-drop crate1 loc2 drone1 carrier1 person3 food n2 n1
2
0 2
1 2
3
0 2 1 2
0 5 2 1
0 7 -1 0
1
end_operator
begin_operator
pick-and-drop crate1 loc2 drone1 carrier1 person3 food n3 n2
2
0 2
1 2
3
0 2 1 2
0 5 3 2
0 7 -1 0
1
end_operator
begin_operator
pick-and-drop crate1 loc2 drone1 carrier1 person3 food n4 n3
2
0 2
1 2
3
0 2 1 2
0 5 4 3
0 7 -1 0
1
end_operator
begin_operator
pick-and-drop crate1 loc3 drone1 carrier1 person2 food n1 n0
2
0 3
1 3
3
0 2 1 2
0 5 1 0
0 8 -1 0
1
end_operator
begin_operator
pick-and-drop crate1 loc3 drone1 carrier1 person2 food n2 n1
2
0 3
1 3
3
0 2 1 2
0 5 2 1
0 8 -1 0
1
end_operator
begin_operator
pick-and-drop crate1 loc3 drone1 carrier1 person2 food n3 n2
2
0 3
1 3
3
0 2 1 2
0 5 3 2
0 8 -1 0
1
end_operator
begin_operator
pick-and-drop crate1 loc3 drone1 carrier1 person2 food n4 n3
2
0 3
1 3
3
0 2 1 2
0 5 4 3
0 8 -1 0
1
end_operator
begin_operator
pick-and-drop crate2 loc1 drone1 carrier1 person1 food n1 n0
2
0 1
1 1
2
0 3 1 2
0 5 1 0
1
end_operator
begin_operator
pick-and-drop crate2 loc1 drone1 carrier1 person1 food n2 n1
2
0 1
1 1
2
0 3 1 2
0 5 2 1
1
end_operator
begin_operator
pick-and-drop crate2 loc1 drone1 carrier1 person1 food n3 n2
2
0 1
1 1
2
0 3 1 2
0 5 3 2
1
end_operator
begin_operator
pick-and-drop crate2 loc1 drone1 carrier1 person1 food n4 n3
2
0 1
1 1
2
0 3 1 2
0 5 4 3
1
end_operator
begin_operator
pick-and-drop crate2 loc2 drone1 carrier1 person3 food n1 n0
2
0 2
1 2
3
0 3 1 2
0 5 1 0
0 7 -1 0
1
end_operator
begin_operator
pick-and-drop crate2 loc2 drone1 carrier1 person3 food n2 n1
2
0 2
1 2
3
0 3 1 2
0 5 2 1
0 7 -1 0
1
end_operator
begin_operator
pick-and-drop crate2 loc2 drone1 carrier1 person3 food n3 n2
2
0 2
1 2
3
0 3 1 2
0 5 3 2
0 7 -1 0
1
end_operator
begin_operator
pick-and-drop crate2 loc2 drone1 carrier1 person3 food n4 n3
2
0 2
1 2
3
0 3 1 2
0 5 4 3
0 7 -1 0
1
end_operator
begin_operator
pick-and-drop crate2 loc3 drone1 carrier1 person2 food n1 n0
2
0 3
1 3
3
0 3 1 2
0 5 1 0
0 8 -1 0
1
end_operator
begin_operator
pick-and-drop crate2 loc3 drone1 carrier1 person2 food n2 n1
2
0 3
1 3
3
0 3 1 2
0 5 2 1
0 8 -1 0
1
end_operator
begin_operator
pick-and-drop crate2 loc3 drone1 carrier1 person2 food n3 n2
2
0 3
1 3
3
0 3 1 2
0 5 3 2
0 8 -1 0
1
end_operator
begin_operator
pick-and-drop crate2 loc3 drone1 carrier1 person2 food n4 n3
2
0 3
1 3
3
0 3 1 2
0 5 4 3
0 8 -1 0
1
end_operator
begin_operator
pick-and-drop crate3 loc1 drone1 carrier1 person1 medicine n1 n0
2
0 1
1 1
2
0 4 1 2
0 5 1 0
1
end_operator
begin_operator
pick-and-drop crate3 loc1 drone1 carrier1 person1 medicine n2 n1
2
0 1
1 1
2
0 4 1 2
0 5 2 1
1
end_operator
begin_operator
pick-and-drop crate3 loc1 drone1 carrier1 person1 medicine n3 n2
2
0 1
1 1
2
0 4 1 2
0 5 3 2
1
end_operator
begin_operator
pick-and-drop crate3 loc1 drone1 carrier1 person1 medicine n4 n3
2
0 1
1 1
2
0 4 1 2
0 5 4 3
1
end_operator
begin_operator
pick-and-drop crate3 loc2 drone1 carrier1 person3 medicine n1 n0
2
0 2
1 2
2
0 4 1 2
0 5 1 0
1
end_operator
begin_operator
pick-and-drop crate3 loc2 drone1 carrier1 person3 medicine n2 n1
2
0 2
1 2
2
0 4 1 2
0 5 2 1
1
end_operator
begin_operator
pick-and-drop crate3 loc2 drone1 carrier1 person3 medicine n3 n2
2
0 2
1 2
2
0 4 1 2
0 5 3 2
1
end_operator
begin_operator
pick-and-drop crate3 loc2 drone1 carrier1 person3 medicine n4 n3
2
0 2
1 2
2
0 4 1 2
0 5 4 3
1
end_operator
begin_operator
pick-and-drop crate3 loc3 drone1 carrier1 person2 medicine n1 n0
2
0 3
1 3
3
0 4 1 2
0 5 1 0
0 6 -1 0
1
end_operator
begin_operator
pick-and-drop crate3 loc3 drone1 carrier1 person2 medicine n2 n1
2
0 3
1 3
3
0 4 1 2
0 5 2 1
0 6 -1 0
1
end_operator
begin_operator
pick-and-drop crate3 loc3 drone1 carrier1 person2 medicine n3 n2
2
0 3
1 3
3
0 4 1 2
0 5 3 2
0 6 -1 0
1
end_operator
begin_operator
pick-and-drop crate3 loc3 drone1 carrier1 person2 medicine n4 n3
2
0 3
1 3
3
0 4 1 2
0 5 4 3
0 6 -1 0
1
end_operator
begin_operator
put-crate-in-carrier crate1 depot drone1 carrier1 n0 n1
2
0 0
1 0
2
0 2 0 1
0 5 0 1
1
end_operator
begin_operator
put-crate-in-carrier crate1 depot drone1 carrier1 n1 n2
2
0 0
1 0
2
0 2 0 1
0 5 1 2
1
end_operator
begin_operator
put-crate-in-carrier crate1 depot drone1 carrier1 n2 n3
2
0 0
1 0
2
0 2 0 1
0 5 2 3
1
end_operator
begin_operator
put-crate-in-carrier crate1 depot drone1 carrier1 n3 n4
2
0 0
1 0
2
0 2 0 1
0 5 3 4
1
end_operator
begin_operator
put-crate-in-carrier crate2 depot drone1 carrier1 n0 n1
2
0 0
1 0
2
0 3 0 1
0 5 0 1
1
end_operator
begin_operator
put-crate-in-carrier crate2 depot drone1 carrier1 n1 n2
2
0 0
1 0
2
0 3 0 1
0 5 1 2
1
end_operator
begin_operator
put-crate-in-carrier crate2 depot drone1 carrier1 n2 n3
2
0 0
1 0
2
0 3 0 1
0 5 2 3
1
end_operator
begin_operator
put-crate-in-carrier crate2 depot drone1 carrier1 n3 n4
2
0 0
1 0
2
0 3 0 1
0 5 3 4
1
end_operator
begin_operator
put-crate-in-carrier crate3 depot drone1 carrier1 n0 n1
2
0 0
1 0
2
0 4 0 1
0 5 0 1
1
end_operator
begin_operator
put-crate-in-carrier crate3 depot drone1 carrier1 n1 n2
2
0 0
1 0
2
0 4 0 1
0 5 1 2
1
end_operator
begin_operator
put-crate-in-carrier crate3 depot drone1 carrier1 n2 n3
2
0 0
1 0
2
0 4 0 1
0 5 2 3
1
end_operator
begin_operator
put-crate-in-carrier crate3 depot drone1 carrier1 n3 n4
2
0 0
1 0
2
0 4 0 1
0 5 3 4
1
end_operator
0
