(define (problem drone_problem_d1_r1_l2_p2_c2_g2_ct2)
(:domain p2)
(:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	crate1 - crate
	crate2 - crate
	food - content
	medicine - content
	person1 - person
	person2 - person
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
	(carrier-at carrier1 depot)
	(empty-space carrier1 space1)
	(empty-space carrier1 space2)
	(empty-space carrier1 space3)
	(empty-space carrier1 space4)
	(content-crate food crate1)
	(content-crate medicine crate2)
	(person-at person1 loc1)
	(person-at person2 loc1)
(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 192)
	(= (fly-cost depot loc2) 149)
	(= (fly-cost loc1 depot) 192)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 96)
	(= (fly-cost loc2 depot) 149)
	(= (fly-cost loc2 loc1) 96)
	(= (fly-cost loc2 loc2) 1)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 medicine)
	(has-content-person person2 food)
))
(:metric minimize (total-cost))
)
