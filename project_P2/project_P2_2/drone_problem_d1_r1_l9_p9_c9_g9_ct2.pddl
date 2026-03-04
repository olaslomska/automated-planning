(define (problem drone_problem_d1_r1_l9_p9_c9_g9_ct2)
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
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	crate8 - crate
	crate9 - crate
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
	(carrier-at carrier1 depot)
	(empty-space carrier1 space1)
	(empty-space carrier1 space2)
	(empty-space carrier1 space3)
	(empty-space carrier1 space4)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate food crate3)
	(content-crate food crate4)
	(content-crate food crate5)
	(content-crate medicine crate6)
	(content-crate medicine crate7)
	(content-crate medicine crate8)
	(content-crate medicine crate9)
	(person-at person1 loc3)
	(person-at person2 loc2)
	(person-at person3 loc4)
	(person-at person4 loc3)
	(person-at person5 loc4)
	(person-at person6 loc9)
	(person-at person7 loc6)
	(person-at person8 loc7)
	(person-at person9 loc1)
(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 133)
	(= (fly-cost depot loc2) 107)
	(= (fly-cost depot loc3) 222)
	(= (fly-cost depot loc4) 122)
	(= (fly-cost depot loc5) 163)
	(= (fly-cost depot loc6) 209)
	(= (fly-cost depot loc7) 181)
	(= (fly-cost depot loc8) 97)
	(= (fly-cost depot loc9) 128)
	(= (fly-cost loc1 depot) 133)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 27)
	(= (fly-cost loc1 loc3) 106)
	(= (fly-cost loc1 loc4) 28)
	(= (fly-cost loc1 loc5) 93)
	(= (fly-cost loc1 loc6) 143)
	(= (fly-cost loc1 loc7) 87)
	(= (fly-cost loc1 loc8) 43)
	(= (fly-cost loc1 loc9) 54)
	(= (fly-cost loc2 depot) 107)
	(= (fly-cost loc2 loc1) 27)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 125)
	(= (fly-cost loc2 loc4) 31)
	(= (fly-cost loc2 loc5) 94)
	(= (fly-cost loc2 loc6) 146)
	(= (fly-cost loc2 loc7) 96)
	(= (fly-cost loc2 loc8) 19)
	(= (fly-cost loc2 loc9) 50)
	(= (fly-cost loc3 depot) 222)
	(= (fly-cost loc3 loc1) 106)
	(= (fly-cost loc3 loc2) 125)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 133)
	(= (fly-cost loc3 loc5) 78)
	(= (fly-cost loc3 loc6) 88)
	(= (fly-cost loc3 loc7) 50)
	(= (fly-cost loc3 loc8) 128)
	(= (fly-cost loc3 loc9) 95)
	(= (fly-cost loc4 depot) 122)
	(= (fly-cost loc4 loc1) 28)
	(= (fly-cost loc4 loc2) 31)
	(= (fly-cost loc4 loc3) 133)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 118)
	(= (fly-cost loc4 loc6) 168)
	(= (fly-cost loc4 loc7) 114)
	(= (fly-cost loc4 loc8) 49)
	(= (fly-cost loc4 loc9) 76)
	(= (fly-cost loc5 depot) 163)
	(= (fly-cost loc5 loc1) 93)
	(= (fly-cost loc5 loc2) 94)
	(= (fly-cost loc5 loc3) 78)
	(= (fly-cost loc5 loc4) 118)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 53)
	(= (fly-cost loc5 loc7) 30)
	(= (fly-cost loc5 loc8) 85)
	(= (fly-cost loc5 loc9) 45)
	(= (fly-cost loc6 depot) 209)
	(= (fly-cost loc6 loc1) 143)
	(= (fly-cost loc6 loc2) 146)
	(= (fly-cost loc6 loc3) 88)
	(= (fly-cost loc6 loc4) 168)
	(= (fly-cost loc6 loc5) 53)
	(= (fly-cost loc6 loc6) 1)
	(= (fly-cost loc6 loc7) 60)
	(= (fly-cost loc6 loc8) 137)
	(= (fly-cost loc6 loc9) 97)
	(= (fly-cost loc7 depot) 181)
	(= (fly-cost loc7 loc1) 87)
	(= (fly-cost loc7 loc2) 96)
	(= (fly-cost loc7 loc3) 50)
	(= (fly-cost loc7 loc4) 114)
	(= (fly-cost loc7 loc5) 30)
	(= (fly-cost loc7 loc6) 60)
	(= (fly-cost loc7 loc7) 1)
	(= (fly-cost loc7 loc8) 93)
	(= (fly-cost loc7 loc9) 54)
	(= (fly-cost loc8 depot) 97)
	(= (fly-cost loc8 loc1) 43)
	(= (fly-cost loc8 loc2) 19)
	(= (fly-cost loc8 loc3) 128)
	(= (fly-cost loc8 loc4) 49)
	(= (fly-cost loc8 loc5) 85)
	(= (fly-cost loc8 loc6) 137)
	(= (fly-cost loc8 loc7) 93)
	(= (fly-cost loc8 loc8) 1)
	(= (fly-cost loc8 loc9) 41)
	(= (fly-cost loc9 depot) 128)
	(= (fly-cost loc9 loc1) 54)
	(= (fly-cost loc9 loc2) 50)
	(= (fly-cost loc9 loc3) 95)
	(= (fly-cost loc9 loc4) 76)
	(= (fly-cost loc9 loc5) 45)
	(= (fly-cost loc9 loc6) 97)
	(= (fly-cost loc9 loc7) 54)
	(= (fly-cost loc9 loc8) 41)
	(= (fly-cost loc9 loc9) 1)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 food)
	(has-content-person person1 medicine)
	(has-content-person person2 food)
	(has-content-person person4 food)
	(has-content-person person4 medicine)
	(has-content-person person5 food)
	(has-content-person person6 medicine)
	(has-content-person person8 food)
	(has-content-person person8 medicine)
))
(:metric minimize (total-cost))
)
