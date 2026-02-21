(define (problem drone_problem_d1_r0_l3_p3_c3_g3_ct2)
(:domain p1)
(:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	food - content
	medicine - content
	person1 - person
	person2 - person
	person3 - person
	left right - arm
)
(:init
	(drone-at drone1 depot)
	(crate-at crate1 depot)
	(crate-at crate2 depot)
	(crate-at crate3 depot)
	(empty-arm left)
	(empty-arm right)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate medicine crate3)
	(person-at person1 loc3)
	(person-at person2 loc1)
	(person-at person3 loc2)
	(person-need person2 food)
	(person-need person3 food)
	(person-need person3 medicine)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person2 food)
	(has-content-person person3 food)
	(has-content-person person3 medicine)
))
)
