(define (problem drone_problem_d1_r1_l6_p6_c6_g6_ct2)
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
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	food - content
	medicine - content
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
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
	(person-at person1 loc6)
	(person-at person2 loc4)
	(person-at person3 loc3)
	(person-at person4 loc4)
	(person-at person5 loc6)
	(person-at person6 loc5)
(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 131)
	(= (fly-cost depot loc2) 165)
	(= (fly-cost depot loc3) 213)
	(= (fly-cost depot loc4) 95)
	(= (fly-cost depot loc5) 202)
	(= (fly-cost depot loc6) 139)
	(= (fly-cost loc1 depot) 131)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 166)
	(= (fly-cost loc1 loc3) 161)
	(= (fly-cost loc1 loc4) 101)
	(= (fly-cost loc1 loc5) 72)
	(= (fly-cost loc1 loc6) 113)
	(= (fly-cost loc2 depot) 165)
	(= (fly-cost loc2 loc1) 166)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 77)
	(= (fly-cost loc2 loc4) 80)
	(= (fly-cost loc2 loc5) 206)
	(= (fly-cost loc2 loc6) 54)
	(= (fly-cost loc3 depot) 213)
	(= (fly-cost loc3 loc1) 161)
	(= (fly-cost loc3 loc2) 77)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 118)
	(= (fly-cost loc3 loc5) 173)
	(= (fly-cost loc3 loc6) 75)
	(= (fly-cost loc4 depot) 95)
	(= (fly-cost loc4 loc1) 101)
	(= (fly-cost loc4 loc2) 80)
	(= (fly-cost loc4 loc3) 118)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 159)
	(= (fly-cost loc4 loc6) 44)
	(= (fly-cost loc5 depot) 202)
	(= (fly-cost loc5 loc1) 72)
	(= (fly-cost loc5 loc2) 206)
	(= (fly-cost loc5 loc3) 173)
	(= (fly-cost loc5 loc4) 159)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 155)
	(= (fly-cost loc6 depot) 139)
	(= (fly-cost loc6 loc1) 113)
	(= (fly-cost loc6 loc2) 54)
	(= (fly-cost loc6 loc3) 75)
	(= (fly-cost loc6 loc4) 44)
	(= (fly-cost loc6 loc5) 155)
	(= (fly-cost loc6 loc6) 1)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 medicine)
	(has-content-person person4 food)
	(has-content-person person4 medicine)
	(has-content-person person5 medicine)
	(has-content-person person6 food)
	(has-content-person person6 medicine)
))
(:metric minimize (total-cost))
)
