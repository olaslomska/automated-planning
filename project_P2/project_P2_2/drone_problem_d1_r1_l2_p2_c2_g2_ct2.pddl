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
	N0 - num
	N1 - num
	N2 - num
	N3 - num
	N4 - num
)
(:init
	(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 223)
	(= (fly-cost depot loc2) 68)
	(= (fly-cost loc1 depot) 223)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 189)
	(= (fly-cost loc2 depot) 68)
	(= (fly-cost loc2 loc1) 189)
	(= (fly-cost loc2 loc2) 1)
	(drone-at drone1 depot)
	(crate-at crate1 depot)
	(crate-at crate2 depot)
	(carrier-at carrier1 depot)
	(crates-in-carrier carrier1 N0)
	(content-crate food crate1)
	(content-crate medicine crate2)
	(person-at person1 loc1)
	(person-at person2 loc2)
	(next-num N0 N1)
	(next-num N1 N2)
	(next-num N2 N3)
	(next-num N3 N4)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person2 food)
	(has-content-person person2 medicine)
))
(:metric minimize (total-cost))
)
