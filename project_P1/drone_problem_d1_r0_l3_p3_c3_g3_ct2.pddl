(define (problem drone_problem_d1_r0_l3_p3_c3_g3_ct2)
(:domain p1)
(:objects
	drone1 - drone
	depot - location
	warehouse - location
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
	(crate-at crate1 warehouse)
	(crate-at crate2 warehouse)
	(crate-at crate3 warehouse)
	(empty-arm drone1 left)
	(empty-arm drone1 right)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate medicine crate3)
	(person-at person1 loc2)
	(person-at person2 loc2)
	(person-at person3 loc3)
	(person-need person1 food)
	(person-need person1 medicine)
	(person-need person3 food)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 food)
	(has-content-person person1 medicine)
	(has-content-person person3 food)
))
)
