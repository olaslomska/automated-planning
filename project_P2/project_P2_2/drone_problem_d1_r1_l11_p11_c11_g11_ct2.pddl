(define (problem drone_problem_d1_r1_l11_p11_c11_g11_ct2)
(:domain p2)
(:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	loc6 - location
	loc7 - location
	loc8 - location
	loc9 - location
	loc10 - location
	loc11 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	crate8 - crate
	crate9 - crate
	crate10 - crate
	crate11 - crate
	food - content
	medicine - content
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	person9 - person
	person10 - person
	person11 - person
	carrier1 - carrier
	space1 - carrier_space
	space2 - carrier_space
	space3 - carrier_space
	space4 - carrier_space
	N0 - num
	N1 - num
	N2 - num
	N3 - num
	N4 - num
	N5 - num
	N6 - num
	N7 - num
)
(:init
	(drone-at drone1 depot)
	(crate-at crate1 depot)
	(crate-at crate2 depot)
	(crate-at crate3 depot)
	(crate-at crate4 depot)
	(crate-at crate5 depot)
	(crate-at crate6 depot)
	(crate-at crate7 depot)
	(crate-at crate8 depot)
	(crate-at crate9 depot)
	(crate-at crate10 depot)
	(crate-at crate11 depot)
	(carrier-at carrier1 depot)
	(empty-space carrier1 space1)
	(empty-space carrier1 space2)
	(empty-space carrier1 space3)
	(empty-space carrier1 space4)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate medicine crate3)
	(content-crate medicine crate4)
	(content-crate medicine crate5)
	(content-crate medicine crate6)
	(content-crate medicine crate7)
	(content-crate medicine crate8)
	(content-crate medicine crate9)
	(content-crate medicine crate10)
	(content-crate medicine crate11)
	(person-at person1 loc9)
	(person-at person2 loc9)
	(person-at person3 loc7)
	(person-at person4 loc4)
	(person-at person5 loc4)
	(person-at person6 loc4)
	(person-at person7 loc6)
	(person-at person8 loc5)
	(person-at person9 loc4)
	(person-at person10 loc7)
	(person-at person11 loc8)
(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 218)
	(= (fly-cost depot loc2) 118)
	(= (fly-cost depot loc3) 186)
	(= (fly-cost depot loc4) 134)
	(= (fly-cost depot loc5) 120)
	(= (fly-cost depot loc6) 120)
	(= (fly-cost depot loc7) 140)
	(= (fly-cost depot loc8) 201)
	(= (fly-cost depot loc9) 71)
	(= (fly-cost depot loc10) 186)
	(= (fly-cost depot loc11) 70)
	(= (fly-cost loc1 depot) 218)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 105)
	(= (fly-cost loc1 loc3) 68)
	(= (fly-cost loc1 loc4) 94)
	(= (fly-cost loc1 loc5) 113)
	(= (fly-cost loc1 loc6) 142)
	(= (fly-cost loc1 loc7) 137)
	(= (fly-cost loc1 loc8) 21)
	(= (fly-cost loc1 loc9) 148)
	(= (fly-cost loc1 loc10) 40)
	(= (fly-cost loc1 loc11) 153)
	(= (fly-cost loc2 depot) 118)
	(= (fly-cost loc2 loc1) 105)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 71)
	(= (fly-cost loc2 loc4) 19)
	(= (fly-cost loc2 loc5) 20)
	(= (fly-cost loc2 loc6) 54)
	(= (fly-cost loc2 loc7) 63)
	(= (fly-cost loc2 loc8) 92)
	(= (fly-cost loc2 loc9) 48)
	(= (fly-cost loc2 loc10) 83)
	(= (fly-cost loc2 loc11) 50)
	(= (fly-cost loc3 depot) 186)
	(= (fly-cost loc3 loc1) 68)
	(= (fly-cost loc3 loc2) 71)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 53)
	(= (fly-cost loc3 loc5) 67)
	(= (fly-cost loc3 loc6) 85)
	(= (fly-cost loc3 loc7) 75)
	(= (fly-cost loc3 loc8) 69)
	(= (fly-cost loc3 loc9) 118)
	(= (fly-cost loc3 loc10) 77)
	(= (fly-cost loc3 loc11) 117)
	(= (fly-cost loc4 depot) 134)
	(= (fly-cost loc4 loc1) 94)
	(= (fly-cost loc4 loc2) 19)
	(= (fly-cost loc4 loc3) 53)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 20)
	(= (fly-cost loc4 loc6) 53)
	(= (fly-cost loc4 loc7) 56)
	(= (fly-cost loc4 loc8) 83)
	(= (fly-cost loc4 loc9) 65)
	(= (fly-cost loc4 loc10) 78)
	(= (fly-cost loc4 loc11) 65)
	(= (fly-cost loc5 depot) 120)
	(= (fly-cost loc5 loc1) 113)
	(= (fly-cost loc5 loc2) 20)
	(= (fly-cost loc5 loc3) 67)
	(= (fly-cost loc5 loc4) 20)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 35)
	(= (fly-cost loc5 loc7) 44)
	(= (fly-cost loc5 loc8) 103)
	(= (fly-cost loc5 loc9) 55)
	(= (fly-cost loc5 loc10) 97)
	(= (fly-cost loc5 loc11) 51)
	(= (fly-cost loc6 depot) 120)
	(= (fly-cost loc6 loc1) 142)
	(= (fly-cost loc6 loc2) 54)
	(= (fly-cost loc6 loc3) 85)
	(= (fly-cost loc6 loc4) 53)
	(= (fly-cost loc6 loc5) 35)
	(= (fly-cost loc6 loc6) 1)
	(= (fly-cost loc6 loc7) 21)
	(= (fly-cost loc6 loc8) 134)
	(= (fly-cost loc6 loc9) 69)
	(= (fly-cost loc6 loc10) 130)
	(= (fly-cost loc6 loc11) 57)
	(= (fly-cost loc7 depot) 140)
	(= (fly-cost loc7 loc1) 137)
	(= (fly-cost loc7 loc2) 63)
	(= (fly-cost loc7 loc3) 75)
	(= (fly-cost loc7 loc4) 56)
	(= (fly-cost loc7 loc5) 44)
	(= (fly-cost loc7 loc6) 21)
	(= (fly-cost loc7 loc7) 1)
	(= (fly-cost loc7 loc8) 132)
	(= (fly-cost loc7 loc9) 87)
	(= (fly-cost loc7 loc10) 131)
	(= (fly-cost loc7 loc11) 76)
	(= (fly-cost loc8 depot) 201)
	(= (fly-cost loc8 loc1) 21)
	(= (fly-cost loc8 loc2) 92)
	(= (fly-cost loc8 loc3) 69)
	(= (fly-cost loc8 loc4) 83)
	(= (fly-cost loc8 loc5) 103)
	(= (fly-cost loc8 loc6) 134)
	(= (fly-cost loc8 loc7) 132)
	(= (fly-cost loc8 loc8) 1)
	(= (fly-cost loc8 loc9) 132)
	(= (fly-cost loc8 loc10) 20)
	(= (fly-cost loc8 loc11) 139)
	(= (fly-cost loc9 depot) 71)
	(= (fly-cost loc9 loc1) 148)
	(= (fly-cost loc9 loc2) 48)
	(= (fly-cost loc9 loc3) 118)
	(= (fly-cost loc9 loc4) 65)
	(= (fly-cost loc9 loc5) 55)
	(= (fly-cost loc9 loc6) 69)
	(= (fly-cost loc9 loc7) 87)
	(= (fly-cost loc9 loc8) 132)
	(= (fly-cost loc9 loc9) 1)
	(= (fly-cost loc9 loc10) 119)
	(= (fly-cost loc9 loc11) 16)
	(= (fly-cost loc10 depot) 186)
	(= (fly-cost loc10 loc1) 40)
	(= (fly-cost loc10 loc2) 83)
	(= (fly-cost loc10 loc3) 77)
	(= (fly-cost loc10 loc4) 78)
	(= (fly-cost loc10 loc5) 97)
	(= (fly-cost loc10 loc6) 130)
	(= (fly-cost loc10 loc7) 131)
	(= (fly-cost loc10 loc8) 20)
	(= (fly-cost loc10 loc9) 119)
	(= (fly-cost loc10 loc10) 1)
	(= (fly-cost loc10 loc11) 127)
	(= (fly-cost loc11 depot) 70)
	(= (fly-cost loc11 loc1) 153)
	(= (fly-cost loc11 loc2) 50)
	(= (fly-cost loc11 loc3) 117)
	(= (fly-cost loc11 loc4) 65)
	(= (fly-cost loc11 loc5) 51)
	(= (fly-cost loc11 loc6) 57)
	(= (fly-cost loc11 loc7) 76)
	(= (fly-cost loc11 loc8) 139)
	(= (fly-cost loc11 loc9) 16)
	(= (fly-cost loc11 loc10) 127)
	(= (fly-cost loc11 loc11) 1)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 medicine)
	(has-content-person person2 medicine)
	(has-content-person person3 medicine)
	(has-content-person person5 food)
	(has-content-person person6 medicine)
	(has-content-person person7 medicine)
	(has-content-person person8 medicine)
	(has-content-person person9 food)
	(has-content-person person9 medicine)
	(has-content-person person10 medicine)
	(has-content-person person11 medicine)
))
(:metric minimize (total-cost))
)
