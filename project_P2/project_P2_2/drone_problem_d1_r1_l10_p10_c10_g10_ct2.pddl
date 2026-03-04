(define (problem drone_problem_d1_r1_l10_p10_c10_g10_ct2)
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
	(content-crate food crate6)
	(content-crate medicine crate7)
	(content-crate medicine crate8)
	(content-crate medicine crate9)
	(content-crate medicine crate10)
	(person-at person1 loc10)
	(person-at person2 loc8)
	(person-at person3 loc5)
	(person-at person4 loc8)
	(person-at person5 loc10)
	(person-at person6 loc9)
	(person-at person7 loc2)
	(person-at person8 loc4)
	(person-at person9 loc9)
	(person-at person10 loc6)
(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 148)
	(= (fly-cost depot loc2) 27)
	(= (fly-cost depot loc3) 103)
	(= (fly-cost depot loc4) 194)
	(= (fly-cost depot loc5) 87)
	(= (fly-cost depot loc6) 213)
	(= (fly-cost depot loc7) 144)
	(= (fly-cost depot loc8) 114)
	(= (fly-cost depot loc9) 55)
	(= (fly-cost depot loc10) 128)
	(= (fly-cost loc1 depot) 148)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 125)
	(= (fly-cost loc1 loc3) 96)
	(= (fly-cost loc1 loc4) 60)
	(= (fly-cost loc1 loc5) 89)
	(= (fly-cost loc1 loc6) 83)
	(= (fly-cost loc1 loc7) 75)
	(= (fly-cost loc1 loc8) 36)
	(= (fly-cost loc1 loc9) 105)
	(= (fly-cost loc1 loc10) 80)
	(= (fly-cost loc2 depot) 27)
	(= (fly-cost loc2 loc1) 125)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 97)
	(= (fly-cost loc2 loc4) 175)
	(= (fly-cost loc2 loc5) 60)
	(= (fly-cost loc2 loc6) 195)
	(= (fly-cost loc2 loc7) 131)
	(= (fly-cost loc2 loc8) 90)
	(= (fly-cost loc2 loc9) 47)
	(= (fly-cost loc2 loc10) 118)
	(= (fly-cost loc3 depot) 103)
	(= (fly-cost loc3 loc1) 96)
	(= (fly-cost loc3 loc2) 97)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 112)
	(= (fly-cost loc3 loc5) 113)
	(= (fly-cost loc3 loc6) 126)
	(= (fly-cost loc3 loc7) 46)
	(= (fly-cost loc3 loc8) 84)
	(= (fly-cost loc3 loc9) 51)
	(= (fly-cost loc3 loc10) 30)
	(= (fly-cost loc4 depot) 194)
	(= (fly-cost loc4 loc1) 60)
	(= (fly-cost loc4 loc2) 175)
	(= (fly-cost loc4 loc3) 112)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 147)
	(= (fly-cost loc4 loc6) 24)
	(= (fly-cost loc4 loc7) 71)
	(= (fly-cost loc4 loc8) 92)
	(= (fly-cost loc4 loc9) 143)
	(= (fly-cost loc4 loc10) 85)
	(= (fly-cost loc5 depot) 87)
	(= (fly-cost loc5 loc1) 89)
	(= (fly-cost loc5 loc2) 60)
	(= (fly-cost loc5 loc3) 113)
	(= (fly-cost loc5 loc4) 147)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 170)
	(= (fly-cost loc5 loc7) 129)
	(= (fly-cost loc5 loc8) 56)
	(= (fly-cost loc5 loc9) 79)
	(= (fly-cost loc5 loc10) 121)
	(= (fly-cost loc6 depot) 213)
	(= (fly-cost loc6 loc1) 83)
	(= (fly-cost loc6 loc2) 195)
	(= (fly-cost loc6 loc3) 126)
	(= (fly-cost loc6 loc4) 24)
	(= (fly-cost loc6 loc5) 170)
	(= (fly-cost loc6 loc6) 1)
	(= (fly-cost loc6 loc7) 82)
	(= (fly-cost loc6 loc8) 115)
	(= (fly-cost loc6 loc9) 161)
	(= (fly-cost loc6 loc10) 97)
	(= (fly-cost loc7 depot) 144)
	(= (fly-cost loc7 loc1) 75)
	(= (fly-cost loc7 loc2) 131)
	(= (fly-cost loc7 loc3) 46)
	(= (fly-cost loc7 loc4) 71)
	(= (fly-cost loc7 loc5) 129)
	(= (fly-cost loc7 loc6) 82)
	(= (fly-cost loc7 loc7) 1)
	(= (fly-cost loc7 loc8) 82)
	(= (fly-cost loc7 loc9) 89)
	(= (fly-cost loc7 loc10) 17)
	(= (fly-cost loc8 depot) 114)
	(= (fly-cost loc8 loc1) 36)
	(= (fly-cost loc8 loc2) 90)
	(= (fly-cost loc8 loc3) 84)
	(= (fly-cost loc8 loc4) 92)
	(= (fly-cost loc8 loc5) 56)
	(= (fly-cost loc8 loc6) 115)
	(= (fly-cost loc8 loc7) 82)
	(= (fly-cost loc8 loc8) 1)
	(= (fly-cost loc8 loc9) 77)
	(= (fly-cost loc8 loc10) 79)
	(= (fly-cost loc9 depot) 55)
	(= (fly-cost loc9 loc1) 105)
	(= (fly-cost loc9 loc2) 47)
	(= (fly-cost loc9 loc3) 51)
	(= (fly-cost loc9 loc4) 143)
	(= (fly-cost loc9 loc5) 79)
	(= (fly-cost loc9 loc6) 161)
	(= (fly-cost loc9 loc7) 89)
	(= (fly-cost loc9 loc8) 77)
	(= (fly-cost loc9 loc9) 1)
	(= (fly-cost loc9 loc10) 74)
	(= (fly-cost loc10 depot) 128)
	(= (fly-cost loc10 loc1) 80)
	(= (fly-cost loc10 loc2) 118)
	(= (fly-cost loc10 loc3) 30)
	(= (fly-cost loc10 loc4) 85)
	(= (fly-cost loc10 loc5) 121)
	(= (fly-cost loc10 loc6) 97)
	(= (fly-cost loc10 loc7) 17)
	(= (fly-cost loc10 loc8) 79)
	(= (fly-cost loc10 loc9) 74)
	(= (fly-cost loc10 loc10) 1)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 food)
	(has-content-person person2 food)
	(has-content-person person3 medicine)
	(has-content-person person4 food)
	(has-content-person person4 medicine)
	(has-content-person person5 food)
	(has-content-person person5 medicine)
	(has-content-person person6 food)
	(has-content-person person8 food)
	(has-content-person person9 medicine)
))
(:metric minimize (total-cost))
)
