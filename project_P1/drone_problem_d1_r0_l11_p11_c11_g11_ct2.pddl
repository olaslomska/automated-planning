(define (problem drone_problem_d1_r0_l11_p11_c11_g11_ct2)
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
	loc10 - location
	loc11 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	crate8 - crate
	crate9 - crate
	crate10 - crate
	crate11 - crate
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
	person10 - person
	person11 - person
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
	(crate-at crate10 depot)
	(crate-at crate11 depot)
	(empty-arm left)
	(empty-arm right)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate food crate3)
	(content-crate food crate4)
	(content-crate food crate5)
	(content-crate food crate6)
	(content-crate food crate7)
	(content-crate medicine crate8)
	(content-crate medicine crate9)
	(content-crate medicine crate10)
	(content-crate medicine crate11)
	(person-at person1 loc2)
	(person-at person2 loc3)
	(person-at person3 loc9)
	(person-at person4 loc5)
	(person-at person5 loc4)
	(person-at person6 loc11)
	(person-at person7 loc5)
	(person-at person8 loc8)
	(person-at person9 loc4)
	(person-at person10 loc5)
	(person-at person11 loc9)
	(person-need person1 food)
	(person-need person2 food)
	(person-need person2 medicine)
	(person-need person3 food)
	(person-need person4 food)
	(person-need person5 food)
	(person-need person6 food)
	(person-need person6 medicine)
	(person-need person7 medicine)
	(person-need person8 medicine)
	(person-need person9 food)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 food)
	(has-content-person person2 food)
	(has-content-person person2 medicine)
	(has-content-person person3 food)
	(has-content-person person4 food)
	(has-content-person person5 food)
	(has-content-person person6 food)
	(has-content-person person6 medicine)
	(has-content-person person7 medicine)
	(has-content-person person8 medicine)
	(has-content-person person9 food)
))
)
