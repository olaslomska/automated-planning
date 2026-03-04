(define (problem cost/drone_problem_d1_r1_l5_p5_c5_g5_ct2)
(:domain p2)
(:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	food - content
	medicine - content
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
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
	(carrier-at carrier1 depot)
	(empty-space carrier1 space1)
	(empty-space carrier1 space2)
	(empty-space carrier1 space3)
	(empty-space carrier1 space4)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate food crate3)
	(content-crate medicine crate4)
	(content-crate medicine crate5)
	(person-at person1 loc4)
	(person-at person2 loc1)
	(person-at person3 loc3)
	(person-at person4 loc3)
	(person-at person5 loc5)
(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 183)
	(= (fly-cost depot loc2) 90)
	(= (fly-cost depot loc3) 195)
	(= (fly-cost depot loc4) 146)
	(= (fly-cost depot loc5) 104)
	(= (fly-cost loc1 depot) 183)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 107)
	(= (fly-cost loc1 loc3) 77)
	(= (fly-cost loc1 loc4) 53)
	(= (fly-cost loc1 loc5) 123)
	(= (fly-cost loc2 depot) 90)
	(= (fly-cost loc2 loc1) 107)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 105)
	(= (fly-cost loc2 loc4) 93)
	(= (fly-cost loc2 loc5) 31)
	(= (fly-cost loc3 depot) 195)
	(= (fly-cost loc3 loc1) 77)
	(= (fly-cost loc3 loc2) 105)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 117)
	(= (fly-cost loc3 loc5) 101)
	(= (fly-cost loc4 depot) 146)
	(= (fly-cost loc4 loc1) 53)
	(= (fly-cost loc4 loc2) 93)
	(= (fly-cost loc4 loc3) 117)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 120)
	(= (fly-cost loc5 depot) 104)
	(= (fly-cost loc5 loc1) 123)
	(= (fly-cost loc5 loc2) 31)
	(= (fly-cost loc5 loc3) 101)
	(= (fly-cost loc5 loc4) 120)
	(= (fly-cost loc5 loc5) 1)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person2 medicine)
	(has-content-person person3 food)
	(has-content-person person4 food)
	(has-content-person person5 food)
	(has-content-person person5 medicine)
))
(:metric minimize (total-cost))
)
