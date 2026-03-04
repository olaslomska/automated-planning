(define (problem drone_problem_d1_r1_l7_p7_c7_g7_ct2)
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
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	food - content
	medicine - content
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
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
	(carrier-at carrier1 depot)
	(empty-space carrier1 space1)
	(empty-space carrier1 space2)
	(empty-space carrier1 space3)
	(empty-space carrier1 space4)
	(content-crate food crate1)
	(content-crate medicine crate2)
	(content-crate medicine crate3)
	(content-crate medicine crate4)
	(content-crate medicine crate5)
	(content-crate medicine crate6)
	(content-crate medicine crate7)
	(person-at person1 loc5)
	(person-at person2 loc5)
	(person-at person3 loc3)
	(person-at person4 loc1)
	(person-at person5 loc7)
	(person-at person6 loc5)
	(person-at person7 loc6)
(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 174)
	(= (fly-cost depot loc2) 227)
	(= (fly-cost depot loc3) 186)
	(= (fly-cost depot loc4) 170)
	(= (fly-cost depot loc5) 221)
	(= (fly-cost depot loc6) 141)
	(= (fly-cost depot loc7) 165)
	(= (fly-cost loc1 depot) 174)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 156)
	(= (fly-cost loc1 loc3) 150)
	(= (fly-cost loc1 loc4) 166)
	(= (fly-cost loc1 loc5) 118)
	(= (fly-cost loc1 loc6) 166)
	(= (fly-cost loc1 loc7) 10)
	(= (fly-cost loc2 depot) 227)
	(= (fly-cost loc2 loc1) 156)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 48)
	(= (fly-cost loc2 loc4) 76)
	(= (fly-cost loc2 loc5) 45)
	(= (fly-cost loc2 loc6) 106)
	(= (fly-cost loc2 loc7) 152)
	(= (fly-cost loc3 depot) 186)
	(= (fly-cost loc3 loc1) 150)
	(= (fly-cost loc3 loc2) 48)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 31)
	(= (fly-cost loc3 loc5) 71)
	(= (fly-cost loc3 loc6) 59)
	(= (fly-cost loc3 loc7) 143)
	(= (fly-cost loc4 depot) 170)
	(= (fly-cost loc4 loc1) 166)
	(= (fly-cost loc4 loc2) 76)
	(= (fly-cost loc4 loc3) 31)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 100)
	(= (fly-cost loc4 loc6) 33)
	(= (fly-cost loc4 loc7) 158)
	(= (fly-cost loc5 depot) 221)
	(= (fly-cost loc5 loc1) 118)
	(= (fly-cost loc5 loc2) 45)
	(= (fly-cost loc5 loc3) 71)
	(= (fly-cost loc5 loc4) 100)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 124)
	(= (fly-cost loc5 loc7) 115)
	(= (fly-cost loc6 depot) 141)
	(= (fly-cost loc6 loc1) 166)
	(= (fly-cost loc6 loc2) 106)
	(= (fly-cost loc6 loc3) 59)
	(= (fly-cost loc6 loc4) 33)
	(= (fly-cost loc6 loc5) 124)
	(= (fly-cost loc6 loc6) 1)
	(= (fly-cost loc6 loc7) 157)
	(= (fly-cost loc7 depot) 165)
	(= (fly-cost loc7 loc1) 10)
	(= (fly-cost loc7 loc2) 152)
	(= (fly-cost loc7 loc3) 143)
	(= (fly-cost loc7 loc4) 158)
	(= (fly-cost loc7 loc5) 115)
	(= (fly-cost loc7 loc6) 157)
	(= (fly-cost loc7 loc7) 1)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 food)
	(has-content-person person1 medicine)
	(has-content-person person2 medicine)
	(has-content-person person3 medicine)
	(has-content-person person4 medicine)
	(has-content-person person6 medicine)
	(has-content-person person7 medicine)
))
(:metric minimize (total-cost))
)
