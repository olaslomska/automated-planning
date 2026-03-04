(define (problem problem1) (:domain p2)
(:objects 
    drone1 - drone
    crate1 - crate
    crate2 - crate
    crate3 - crate
    carrier1 - carrier
    person1 - person
    person2 - person
    N0 N1 N2 N3 N4 N5 N6 N7 - num
    space1 space2 space3 space4 - carrier_space
    room1 depot - location
    food medicine - content
)

(:init
    (person-at person1 room1)
    (person-at person2 room1)
    (crate-at crate1 depot)
    (crate-at crate2 depot)
    (crate-at crate3 depot)
    (content-crate food crate1)
    (content-crate medicine crate2)
    (content-crate food crate3)
    (drone-at drone1 depot)
    (carrier-at carrier1 depot)

    (empty-space carrier1 space1)
    (empty-space carrier1 space2)
    (empty-space carrier1 space3)
    (empty-space carrier1 space4)

    (next N0 N1)
    (next N1 N2)
    (next N2 N3)
    (next N3 N4)
    (next N4 N5)
    (next N5 N6)
    (next N6 N7)


)

(:goal (and
   (has-content-person person1 food)
   (has-content-person person2 medicine)
))
)