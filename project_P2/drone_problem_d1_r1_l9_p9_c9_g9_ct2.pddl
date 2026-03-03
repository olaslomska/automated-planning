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
	(content-crate medicine crate5)
	(content-crate medicine crate6)
	(content-crate medicine crate7)
	(content-crate medicine crate8)
	(content-crate medicine crate9)
	(person-at person1 loc7)
	(person-at person2 loc4)
	(person-at person3 loc1)
	(person-at person4 loc6)
	(person-at person5 loc3)
	(person-at person6 loc2)
	(person-at person7 loc2)
	(person-at person8 loc5)
	(person-at person9 loc1)
(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 189)
	(= (fly-cost depot loc2) 161)
	(= (fly-cost depot loc3) 20)
	(= (fly-cost depot loc4) 141)
	(= (fly-cost depot loc5) 150)
	(= (fly-cost depot loc6) 67)
	(= (fly-cost depot loc7) 59)
	(= (fly-cost depot loc8) 134)
	(= (fly-cost depot loc9) 234)
	(= (fly-cost loc1 depot) 189)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 112)
	(= (fly-cost loc1 loc3) 182)
	(= (fly-cost loc1 loc4) 93)
	(= (fly-cost loc1 loc5) 42)
	(= (fly-cost loc1 loc6) 137)
	(= (fly-cost loc1 loc7) 152)
	(= (fly-cost loc1 loc8) 55)
	(= (fly-cost loc1 loc9) 86)
	(= (fly-cost loc2 depot) 161)
	(= (fly-cost loc2 loc1) 112)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 145)
	(= (fly-cost loc2 loc4) 29)
	(= (fly-cost loc2 loc5) 111)
	(= (fly-cost loc2 loc6) 95)
	(= (fly-cost loc2 loc7) 103)
	(= (fly-cost loc2 loc8) 100)
	(= (fly-cost loc2 loc9) 92)
	(= (fly-cost loc3 depot) 20)
	(= (fly-cost loc3 loc1) 182)
	(= (fly-cost loc3 loc2) 145)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 127)
	(= (fly-cost loc3 loc5) 146)
	(= (fly-cost loc3 loc6) 53)
	(= (fly-cost loc3 loc7) 42)
	(= (fly-cost loc3 loc8) 129)
	(= (fly-cost loc3 loc9) 222)
	(= (fly-cost loc4 depot) 141)
	(= (fly-cost loc4 loc1) 93)
	(= (fly-cost loc4 loc2) 29)
	(= (fly-cost loc4 loc3) 127)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 85)
	(= (fly-cost loc4 loc6) 75)
	(= (fly-cost loc4 loc7) 86)
	(= (fly-cost loc4 loc8) 74)
	(= (fly-cost loc4 loc9) 97)
	(= (fly-cost loc5 depot) 150)
	(= (fly-cost loc5 loc1) 42)
	(= (fly-cost loc5 loc2) 111)
	(= (fly-cost loc5 loc3) 146)
	(= (fly-cost loc5 loc4) 85)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 105)
	(= (fly-cost loc5 loc7) 120)
	(= (fly-cost loc5 loc8) 18)
	(= (fly-cost loc5 loc9) 118)
	(= (fly-cost loc6 depot) 67)
	(= (fly-cost loc6 loc1) 137)
	(= (fly-cost loc6 loc2) 95)
	(= (fly-cost loc6 loc3) 53)
	(= (fly-cost loc6 loc4) 75)
	(= (fly-cost loc6 loc5) 105)
	(= (fly-cost loc6 loc6) 1)
	(= (fly-cost loc6 loc7) 16)
	(= (fly-cost loc6 loc8) 87)
	(= (fly-cost loc6 loc9) 170)
	(= (fly-cost loc7 depot) 59)
	(= (fly-cost loc7 loc1) 152)
	(= (fly-cost loc7 loc2) 103)
	(= (fly-cost loc7 loc3) 42)
	(= (fly-cost loc7 loc4) 86)
	(= (fly-cost loc7 loc5) 120)
	(= (fly-cost loc7 loc6) 16)
	(= (fly-cost loc7 loc7) 1)
	(= (fly-cost loc7 loc8) 102)
	(= (fly-cost loc7 loc9) 182)
	(= (fly-cost loc8 depot) 134)
	(= (fly-cost loc8 loc1) 55)
	(= (fly-cost loc8 loc2) 100)
	(= (fly-cost loc8 loc3) 129)
	(= (fly-cost loc8 loc4) 74)
	(= (fly-cost loc8 loc5) 18)
	(= (fly-cost loc8 loc6) 87)
	(= (fly-cost loc8 loc7) 102)
	(= (fly-cost loc8 loc8) 1)
	(= (fly-cost loc8 loc9) 121)
	(= (fly-cost loc9 depot) 234)
	(= (fly-cost loc9 loc1) 86)
	(= (fly-cost loc9 loc2) 92)
	(= (fly-cost loc9 loc3) 222)
	(= (fly-cost loc9 loc4) 97)
	(= (fly-cost loc9 loc5) 118)
	(= (fly-cost loc9 loc6) 170)
	(= (fly-cost loc9 loc7) 182)
	(= (fly-cost loc9 loc8) 121)
	(= (fly-cost loc9 loc9) 1)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 medicine)
	(has-content-person person2 food)
	(has-content-person person2 medicine)
	(has-content-person person4 medicine)
	(has-content-person person5 medicine)
	(has-content-person person7 food)
	(has-content-person person7 medicine)
	(has-content-person person8 food)
	(has-content-person person9 food)
))
(:metric minimize (total-cost))
)
