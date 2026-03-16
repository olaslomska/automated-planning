(define (problem drone_problem_d5_r5_l5_p5_c5_g5_ct2)
(:domain p3)
(:objects
	drone1 - drone
	drone2 - drone
	drone3 - drone
	drone4 - drone
	drone5 - drone
	depot - location
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
	carrier1 - carrier
	carrier2 - carrier
	carrier3 - carrier
	carrier4 - carrier
	carrier5 - carrier
	N0 - num
	N1 - num
	N2 - num
	N3 - num
	N4 - num
)
(:init
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 223)
	(= (fly-cost depot loc2) 68)
	(= (fly-cost depot loc3) 182)
	(= (fly-cost depot loc4) 131)
	(= (fly-cost depot loc5) 154)
	(= (fly-cost loc1 depot) 223)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 189)
	(= (fly-cost loc1 loc3) 67)
	(= (fly-cost loc1 loc4) 96)
	(= (fly-cost loc1 loc5) 74)
	(= (fly-cost loc2 depot) 68)
	(= (fly-cost loc2 loc1) 189)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 134)
	(= (fly-cost loc2 loc4) 94)
	(= (fly-cost loc2 loc5) 115)
	(= (fly-cost loc3 depot) 182)
	(= (fly-cost loc3 loc1) 67)
	(= (fly-cost loc3 loc2) 134)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 55)
	(= (fly-cost loc3 loc5) 34)
	(= (fly-cost loc4 depot) 131)
	(= (fly-cost loc4 loc1) 96)
	(= (fly-cost loc4 loc2) 94)
	(= (fly-cost loc4 loc3) 55)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 24)
	(= (fly-cost loc5 depot) 154)
	(= (fly-cost loc5 loc1) 74)
	(= (fly-cost loc5 loc2) 115)
	(= (fly-cost loc5 loc3) 34)
	(= (fly-cost loc5 loc4) 24)
	(= (fly-cost loc5 loc5) 1)
	(drone-at drone1 depot)
	(drone-free drone1)
	(drone-at drone2 depot)
	(drone-free drone2)
	(drone-at drone3 depot)
	(drone-free drone3)
	(drone-at drone4 depot)
	(drone-free drone4)
	(drone-at drone5 depot)
	(drone-free drone5)
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
	(carrier-at carrier1 depot)
	(carrier-free carrier1)
	(carrier-capacity carrier1 N4)
	(crates-in-carrier carrier1 N0)
	(carrier-at carrier2 depot)
	(carrier-free carrier2)
	(carrier-capacity carrier2 N4)
	(crates-in-carrier carrier2 N0)
	(carrier-at carrier3 depot)
	(carrier-free carrier3)
	(carrier-capacity carrier3 N4)
	(crates-in-carrier carrier3 N0)
	(carrier-at carrier4 depot)
	(carrier-free carrier4)
	(carrier-capacity carrier4 N4)
	(crates-in-carrier carrier4 N0)
	(carrier-at carrier5 depot)
	(carrier-free carrier5)
	(carrier-capacity carrier5 N4)
	(crates-in-carrier carrier5 N0)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate food crate3)
	(content-crate food crate4)
	(content-crate medicine crate5)
	(person-at person1 loc1)
	(person-free person1)
	(person-at person2 loc4)
	(person-free person2)
	(person-at person3 loc1)
	(person-free person3)
	(person-at person4 loc5)
	(person-free person4)
	(person-at person5 loc4)
	(person-free person5)
	(next-num N0 N1)
	(next-num N1 N2)
	(next-num N2 N3)
	(next-num N3 N4)
)
(:goal (and
	(drone-at drone1 depot)
	(drone-at drone2 depot)
	(drone-at drone3 depot)
	(drone-at drone4 depot)
	(drone-at drone5 depot)
	(has-content-person person1 food)
	(has-content-person person1 medicine)
	(has-content-person person3 food)
	(has-content-person person4 food)
	(has-content-person person5 food)
))
)
