(define (problem drone_problem_d2_r2_l7_p7_c7_g7_ct2)
(:domain p2)
(:objects
	drone1 - drone
	drone2 - drone
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
	carrier1 - carrier
	carrier2 - carrier
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
	(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 223)
	(= (fly-cost depot loc2) 68)
	(= (fly-cost depot loc3) 182)
	(= (fly-cost depot loc4) 131)
	(= (fly-cost depot loc5) 154)
	(= (fly-cost depot loc6) 161)
	(= (fly-cost depot loc7) 135)
	(= (fly-cost loc1 depot) 223)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 189)
	(= (fly-cost loc1 loc3) 67)
	(= (fly-cost loc1 loc4) 96)
	(= (fly-cost loc1 loc5) 74)
	(= (fly-cost loc1 loc6) 69)
	(= (fly-cost loc1 loc7) 98)
	(= (fly-cost loc2 depot) 68)
	(= (fly-cost loc2 loc1) 189)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 134)
	(= (fly-cost loc2 loc4) 94)
	(= (fly-cost loc2 loc5) 115)
	(= (fly-cost loc2 loc6) 140)
	(= (fly-cost loc2 loc7) 123)
	(= (fly-cost loc3 depot) 182)
	(= (fly-cost loc3 loc1) 67)
	(= (fly-cost loc3 loc2) 134)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 55)
	(= (fly-cost loc3 loc5) 34)
	(= (fly-cost loc3 loc6) 72)
	(= (fly-cost loc3 loc7) 90)
	(= (fly-cost loc4 depot) 131)
	(= (fly-cost loc4 loc1) 96)
	(= (fly-cost loc4 loc2) 94)
	(= (fly-cost loc4 loc3) 55)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 24)
	(= (fly-cost loc4 loc6) 51)
	(= (fly-cost loc4 loc7) 50)
	(= (fly-cost loc5 depot) 154)
	(= (fly-cost loc5 loc1) 74)
	(= (fly-cost loc5 loc2) 115)
	(= (fly-cost loc5 loc3) 34)
	(= (fly-cost loc5 loc4) 24)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 46)
	(= (fly-cost loc5 loc7) 57)
	(= (fly-cost loc6 depot) 161)
	(= (fly-cost loc6 loc1) 69)
	(= (fly-cost loc6 loc2) 140)
	(= (fly-cost loc6 loc3) 72)
	(= (fly-cost loc6 loc4) 51)
	(= (fly-cost loc6 loc5) 46)
	(= (fly-cost loc6 loc6) 1)
	(= (fly-cost loc6 loc7) 29)
	(= (fly-cost loc7 depot) 135)
	(= (fly-cost loc7 loc1) 98)
	(= (fly-cost loc7 loc2) 123)
	(= (fly-cost loc7 loc3) 90)
	(= (fly-cost loc7 loc4) 50)
	(= (fly-cost loc7 loc5) 57)
	(= (fly-cost loc7 loc6) 29)
	(= (fly-cost loc7 loc7) 1)
	(drone-at drone1 depot)
	(drone-free drone1)
	(drone-at drone2 depot)
	(drone-free drone2)
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
	(carrier-at carrier1 depot)
	(carrier-free carrier1)
	(carrier-capacity carrier1 N4)
	(crates-in-carrier carrier1 N0)
	(carrier-at carrier2 depot)
	(carrier-free carrier2)
	(carrier-capacity carrier2 N4)
	(crates-in-carrier carrier2 N0)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate food crate3)
	(content-crate food crate4)
	(content-crate medicine crate5)
	(content-crate medicine crate6)
	(content-crate medicine crate7)
	(person-at person1 loc3)
	(person-free person1)
	(person-at person2 loc5)
	(person-free person2)
	(person-at person3 loc6)
	(person-free person3)
	(person-at person4 loc2)
	(person-free person4)
	(person-at person5 loc5)
	(person-free person5)
	(person-at person6 loc4)
	(person-free person6)
	(person-at person7 loc4)
	(person-free person7)
	(next-num N0 N1)
	(next-num N1 N2)
	(next-num N2 N3)
	(next-num N3 N4)
	(next-num N4 N5)
	(next-num N5 N6)
	(next-num N6 N7)
)
(:goal (and
	(drone-at drone1 depot)
	(drone-at drone2 depot)
	(has-content-person person3 food)
	(has-content-person person3 medicine)
	(has-content-person person5 food)
	(has-content-person person5 medicine)
	(has-content-person person6 food)
	(has-content-person person7 food)
	(has-content-person person7 medicine)
))
(:metric minimize (total-time))
)
