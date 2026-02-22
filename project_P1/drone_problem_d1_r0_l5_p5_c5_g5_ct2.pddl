(define (problem drone_problem_d1_r0_l5_p5_c5_g5_ct2)
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
	left right - arm
)
(:init
	(drone-at drone1 depot)
	(crate-at crate1 warehouse)
	(crate-at crate2 warehouse)
	(crate-at crate3 warehouse)
	(crate-at crate4 warehouse)
	(crate-at crate5 warehouse)
	(empty-arm drone1 left)
	(empty-arm drone1 right)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate medicine crate3)
	(content-crate medicine crate4)
	(content-crate medicine crate5)
	(person-at person1 loc1)
	(person-at person2 loc2)
	(person-at person3 loc3)
	(person-at person4 loc1)
	(person-at person5 loc4)
	(person-need person1 medicine)
	(person-need person4 food)
	(person-need person4 medicine)
	(person-need person5 food)
	(person-need person5 medicine)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 medicine)
	(has-content-person person4 food)
	(has-content-person person4 medicine)
	(has-content-person person5 food)
	(has-content-person person5 medicine)
))
)
