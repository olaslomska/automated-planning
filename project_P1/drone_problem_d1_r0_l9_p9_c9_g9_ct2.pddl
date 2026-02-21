(define (problem drone_problem_d1_r0_l9_p9_c9_g9_ct2)
(:domain p1)
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
	loc9 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	crate8 - crate
	crate9 - crate
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
	person9 - person
	left right - arm
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
	(crate-at crate9 depot)
	(empty-arm left)
	(empty-arm right)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate medicine crate3)
	(content-crate medicine crate4)
	(content-crate medicine crate5)
	(content-crate medicine crate6)
	(content-crate medicine crate7)
	(content-crate medicine crate8)
	(content-crate medicine crate9)
	(person-at person1 loc1)
	(person-at person2 loc7)
	(person-at person3 loc8)
	(person-at person4 loc8)
	(person-at person5 loc2)
	(person-at person6 loc9)
	(person-at person7 loc4)
	(person-at person8 loc8)
	(person-at person9 loc9)
	(person-need person1 medicine)
	(person-need person2 medicine)
	(person-need person3 medicine)
	(person-need person4 food)
	(person-need person4 medicine)
	(person-need person6 medicine)
	(person-need person7 food)
	(person-need person7 medicine)
	(person-need person9 medicine)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 medicine)
	(has-content-person person2 medicine)
	(has-content-person person3 medicine)
	(has-content-person person4 food)
	(has-content-person person4 medicine)
	(has-content-person person6 medicine)
	(has-content-person person7 food)
	(has-content-person person7 medicine)
	(has-content-person person9 medicine)
))
)
