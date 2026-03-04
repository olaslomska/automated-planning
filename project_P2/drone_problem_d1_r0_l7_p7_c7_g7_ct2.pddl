(define (problem drone_problem_d1_r0_l7_p7_c7_g7_ct2)
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
	loc7 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	food - content
	medicine - content
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
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
	(crate-at crate7 depot)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate food crate3)
	(content-crate food crate4)
	(content-crate food crate5)
	(content-crate medicine crate6)
	(content-crate medicine crate7)
	(person-at person1 loc1)
	(person-at person2 loc5)
	(person-at person3 loc1)
	(person-at person4 loc5)
	(person-at person5 loc3)
	(person-at person6 loc2)
	(person-at person7 loc1)
(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 143)
	(= (fly-cost depot loc2) 177)
	(= (fly-cost depot loc3) 195)
	(= (fly-cost depot loc4) 117)
	(= (fly-cost depot loc5) 141)
	(= (fly-cost depot loc6) 97)
	(= (fly-cost depot loc7) 176)
	(= (fly-cost loc1 depot) 143)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 40)
	(= (fly-cost loc1 loc3) 136)
	(= (fly-cost loc1 loc4) 104)
	(= (fly-cost loc1 loc5) 42)
	(= (fly-cost loc1 loc6) 165)
	(= (fly-cost loc1 loc7) 47)
	(= (fly-cost loc2 depot) 177)
	(= (fly-cost loc2 loc1) 40)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 121)
	(= (fly-cost loc2 loc4) 114)
	(= (fly-cost loc2 loc5) 47)
	(= (fly-cost loc2 loc6) 184)
	(= (fly-cost loc2 loc7) 16)
	(= (fly-cost loc3 depot) 195)
	(= (fly-cost loc3 loc1) 136)
	(= (fly-cost loc3 loc2) 121)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 78)
	(= (fly-cost loc3 loc5) 95)
	(= (fly-cost loc3 loc6) 137)
	(= (fly-cost loc3 loc7) 106)
	(= (fly-cost loc4 depot) 117)
	(= (fly-cost loc4 loc1) 104)
	(= (fly-cost loc4 loc2) 114)
	(= (fly-cost loc4 loc3) 78)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 68)
	(= (fly-cost loc4 loc6) 74)
	(= (fly-cost loc4 loc7) 103)
	(= (fly-cost loc5 depot) 141)
	(= (fly-cost loc5 loc1) 42)
	(= (fly-cost loc5 loc2) 47)
	(= (fly-cost loc5 loc3) 95)
	(= (fly-cost loc5 loc4) 68)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 137)
	(= (fly-cost loc5 loc7) 39)
	(= (fly-cost loc6 depot) 97)
	(= (fly-cost loc6 loc1) 165)
	(= (fly-cost loc6 loc2) 184)
	(= (fly-cost loc6 loc3) 137)
	(= (fly-cost loc6 loc4) 74)
	(= (fly-cost loc6 loc5) 137)
	(= (fly-cost loc6 loc6) 1)
	(= (fly-cost loc6 loc7) 175)
	(= (fly-cost loc7 depot) 176)
	(= (fly-cost loc7 loc1) 47)
	(= (fly-cost loc7 loc2) 16)
	(= (fly-cost loc7 loc3) 106)
	(= (fly-cost loc7 loc4) 103)
	(= (fly-cost loc7 loc5) 39)
	(= (fly-cost loc7 loc6) 175)
	(= (fly-cost loc7 loc7) 1)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 food)
	(has-content-person person2 medicine)
	(has-content-person person3 food)
	(has-content-person person4 food)
	(has-content-person person5 food)
	(has-content-person person6 food)
	(has-content-person person6 medicine)
))
(:metric minimize (total-cost))
)
