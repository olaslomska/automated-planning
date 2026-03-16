(define (problem drone_problem_d1_r1_l8_p8_c8_g8_ct2)
(:domain p3)
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
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	crate8 - crate
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
	carrier1 - carrier
	N0 - num
	N1 - num
	N2 - num
	N3 - num
	N4 - num
)
(:init
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 219)
	(= (fly-cost depot loc2) 109)
	(= (fly-cost depot loc3) 148)
	(= (fly-cost depot loc4) 163)
	(= (fly-cost depot loc5) 146)
	(= (fly-cost depot loc6) 176)
	(= (fly-cost depot loc7) 142)
	(= (fly-cost depot loc8) 82)
	(= (fly-cost loc1 depot) 219)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 185)
	(= (fly-cost loc1 loc3) 72)
	(= (fly-cost loc1 loc4) 95)
	(= (fly-cost loc1 loc5) 76)
	(= (fly-cost loc1 loc6) 46)
	(= (fly-cost loc1 loc7) 78)
	(= (fly-cost loc1 loc8) 138)
	(= (fly-cost loc2 depot) 109)
	(= (fly-cost loc2 loc1) 185)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 127)
	(= (fly-cost loc2 loc4) 95)
	(= (fly-cost loc2 loc5) 116)
	(= (fly-cost loc2 loc6) 140)
	(= (fly-cost loc2 loc7) 130)
	(= (fly-cost loc2 loc8) 96)
	(= (fly-cost loc3 depot) 148)
	(= (fly-cost loc3 loc1) 72)
	(= (fly-cost loc3 loc2) 127)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 64)
	(= (fly-cost loc3 loc5) 14)
	(= (fly-cost loc3 loc6) 32)
	(= (fly-cost loc3 loc7) 12)
	(= (fly-cost loc3 loc8) 66)
	(= (fly-cost loc4 depot) 163)
	(= (fly-cost loc4 loc1) 95)
	(= (fly-cost loc4 loc2) 95)
	(= (fly-cost loc4 loc3) 64)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 51)
	(= (fly-cost loc4 loc6) 57)
	(= (fly-cost loc4 loc7) 74)
	(= (fly-cost loc4 loc8) 95)
	(= (fly-cost loc5 depot) 146)
	(= (fly-cost loc5 loc1) 76)
	(= (fly-cost loc5 loc2) 116)
	(= (fly-cost loc5 loc3) 14)
	(= (fly-cost loc5 loc4) 51)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 31)
	(= (fly-cost loc5 loc7) 24)
	(= (fly-cost loc5 loc8) 66)
	(= (fly-cost loc6 depot) 176)
	(= (fly-cost loc6 loc1) 46)
	(= (fly-cost loc6 loc2) 140)
	(= (fly-cost loc6 loc3) 32)
	(= (fly-cost loc6 loc4) 57)
	(= (fly-cost loc6 loc5) 31)
	(= (fly-cost loc6 loc6) 1)
	(= (fly-cost loc6 loc7) 42)
	(= (fly-cost loc6 loc8) 96)
	(= (fly-cost loc7 depot) 142)
	(= (fly-cost loc7 loc1) 78)
	(= (fly-cost loc7 loc2) 130)
	(= (fly-cost loc7 loc3) 12)
	(= (fly-cost loc7 loc4) 74)
	(= (fly-cost loc7 loc5) 24)
	(= (fly-cost loc7 loc6) 42)
	(= (fly-cost loc7 loc7) 1)
	(= (fly-cost loc7 loc8) 61)
	(= (fly-cost loc8 depot) 82)
	(= (fly-cost loc8 loc1) 138)
	(= (fly-cost loc8 loc2) 96)
	(= (fly-cost loc8 loc3) 66)
	(= (fly-cost loc8 loc4) 95)
	(= (fly-cost loc8 loc5) 66)
	(= (fly-cost loc8 loc6) 96)
	(= (fly-cost loc8 loc7) 61)
	(= (fly-cost loc8 loc8) 1)
	(drone-at drone1 depot)
	(drone-free drone1)
	(crate-at crate1 depot)
	(crate-free crate1)
	(crate-at crate2 depot)
	(crate-free crate2)
	(crate-at crate3 depot)
	(crate-free crate3)
	(crate-at crate4 depot)
	(crate-free crate4)
	(crate-at crate5 depot)
	(crate-free crate5)
	(crate-at crate6 depot)
	(crate-free crate6)
	(crate-at crate7 depot)
	(crate-free crate7)
	(crate-at crate8 depot)
	(crate-free crate8)
	(carrier-at carrier1 depot)
	(carrier-free carrier1)
	(carrier-capacity carrier1 N4)
	(crates-in-carrier carrier1 N0)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate food crate3)
	(content-crate food crate4)
	(content-crate food crate5)
	(content-crate food crate6)
	(content-crate food crate7)
	(content-crate medicine crate8)
	(person-at person1 loc4)
	(person-free person1)
	(person-at person2 loc4)
	(person-free person2)
	(person-at person3 loc3)
	(person-free person3)
	(person-at person4 loc8)
	(person-free person4)
	(person-at person5 loc2)
	(person-free person5)
	(person-at person6 loc2)
	(person-free person6)
	(person-at person7 loc6)
	(person-free person7)
	(person-at person8 loc8)
	(person-free person8)
	(next-num N0 N1)
	(next-num N1 N2)
	(next-num N2 N3)
	(next-num N3 N4)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 food)
	(has-content-person person2 food)
	(has-content-person person2 medicine)
	(has-content-person person3 food)
	(has-content-person person5 food)
	(has-content-person person6 food)
	(has-content-person person7 food)
	(has-content-person person8 food)
))
)
