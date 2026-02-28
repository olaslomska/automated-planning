(define (problem drone_problem_d1_r0_l6_p6_c6_g6_ct2)
(:domain p1)
(:objects
	drone1 - drone
	depot - location
	warehouse - location
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
	left right - arm
)
(:init
	(drone-at drone1 depot)
	(crate-at crate1 warehouse)
	(crate-at crate2 warehouse)
	(crate-at crate3 warehouse)
	(crate-at crate4 warehouse)
	(crate-at crate5 warehouse)
	(crate-at crate6 warehouse)
	(empty-arm drone1 left)
	(empty-arm drone1 right)
	(content-crate food crate1)
	(content-crate medicine crate2)
	(content-crate medicine crate3)
	(content-crate medicine crate4)
	(content-crate medicine crate5)
	(content-crate medicine crate6)
	(person-at person1 loc2)
	(person-at person2 loc1)
	(person-at person3 loc6)
	(person-at person4 loc6)
	(person-at person5 loc2)
	(person-at person6 loc2)
	(person-need person2 medicine)
	(person-need person3 medicine)
	(person-need person4 medicine)
	(person-need person5 food)
	(person-need person5 medicine)
	(person-need person6 medicine)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person2 medicine)
	(has-content-person person3 medicine)
	(has-content-person person4 medicine)
	(has-content-person person5 food)
	(has-content-person person5 medicine)
	(has-content-person person6 medicine)
))
)
