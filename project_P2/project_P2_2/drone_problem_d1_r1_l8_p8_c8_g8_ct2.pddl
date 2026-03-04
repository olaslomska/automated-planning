(define (problem drone_problem_d1_r1_l8_p8_c8_g8_ct2)
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
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	crate8 - crate
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
	(person-at person1 loc2)
	(person-at person2 loc6)
	(person-at person3 loc4)
	(person-at person4 loc3)
	(person-at person5 loc3)
	(person-at person6 loc8)
	(person-at person7 loc3)
	(person-at person8 loc5)
(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 215)
	(= (fly-cost depot loc2) 147)
	(= (fly-cost depot loc3) 176)
	(= (fly-cost depot loc4) 165)
	(= (fly-cost depot loc5) 62)
	(= (fly-cost depot loc6) 131)
	(= (fly-cost depot loc7) 191)
	(= (fly-cost depot loc8) 164)
	(= (fly-cost loc1 depot) 215)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 143)
	(= (fly-cost loc1 loc3) 179)
	(= (fly-cost loc1 loc4) 82)
	(= (fly-cost loc1 loc5) 156)
	(= (fly-cost loc1 loc6) 94)
	(= (fly-cost loc1 loc7) 107)
	(= (fly-cost loc1 loc8) 58)
	(= (fly-cost loc2 depot) 147)
	(= (fly-cost loc2 loc1) 143)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 45)
	(= (fly-cost loc2 loc4) 159)
	(= (fly-cost loc2 loc5) 124)
	(= (fly-cost loc2 loc6) 129)
	(= (fly-cost loc2 loc7) 199)
	(= (fly-cost loc2 loc8) 91)
	(= (fly-cost loc3 depot) 176)
	(= (fly-cost loc3 loc1) 179)
	(= (fly-cost loc3 loc2) 45)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 203)
	(= (fly-cost loc3 loc5) 164)
	(= (fly-cost loc3 loc6) 173)
	(= (fly-cost loc3 loc7) 243)
	(= (fly-cost loc3 loc8) 132)
	(= (fly-cost loc4 depot) 165)
	(= (fly-cost loc4 loc1) 82)
	(= (fly-cost loc4 loc2) 159)
	(= (fly-cost loc4 loc3) 203)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 104)
	(= (fly-cost loc4 loc6) 39)
	(= (fly-cost loc4 loc7) 40)
	(= (fly-cost loc4 loc8) 79)
	(= (fly-cost loc5 depot) 62)
	(= (fly-cost loc5 loc1) 156)
	(= (fly-cost loc5 loc2) 124)
	(= (fly-cost loc5 loc3) 164)
	(= (fly-cost loc5 loc4) 104)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 69)
	(= (fly-cost loc5 loc7) 133)
	(= (fly-cost loc5 loc8) 110)
	(= (fly-cost loc6 depot) 131)
	(= (fly-cost loc6 loc1) 94)
	(= (fly-cost loc6 loc2) 129)
	(= (fly-cost loc6 loc3) 173)
	(= (fly-cost loc6 loc4) 39)
	(= (fly-cost loc6 loc5) 69)
	(= (fly-cost loc6 loc6) 1)
	(= (fly-cost loc6 loc7) 75)
	(= (fly-cost loc6 loc8) 65)
	(= (fly-cost loc7 depot) 191)
	(= (fly-cost loc7 loc1) 107)
	(= (fly-cost loc7 loc2) 199)
	(= (fly-cost loc7 loc3) 243)
	(= (fly-cost loc7 loc4) 40)
	(= (fly-cost loc7 loc5) 133)
	(= (fly-cost loc7 loc6) 75)
	(= (fly-cost loc7 loc7) 1)
	(= (fly-cost loc7 loc8) 118)
	(= (fly-cost loc8 depot) 164)
	(= (fly-cost loc8 loc1) 58)
	(= (fly-cost loc8 loc2) 91)
	(= (fly-cost loc8 loc3) 132)
	(= (fly-cost loc8 loc4) 79)
	(= (fly-cost loc8 loc5) 110)
	(= (fly-cost loc8 loc6) 65)
	(= (fly-cost loc8 loc7) 118)
	(= (fly-cost loc8 loc8) 1)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 food)
	(has-content-person person1 medicine)
	(has-content-person person2 food)
	(has-content-person person2 medicine)
	(has-content-person person5 food)
	(has-content-person person6 food)
	(has-content-person person7 medicine)
	(has-content-person person8 food)
))
(:metric minimize (total-cost))
)
