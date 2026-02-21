(define (problem problem1) (:domain p1)
(:objects 
    drone1 - drone
    crate1 - crate
    person1 - person
    room1 warehouse depot - location
    food medicine - content
    left right - arm
)

(:init
    (person-at person1 room1)
    (not (is-injured person1))
    (crate-at warehouse)
    (content-crate food crate1)
    (drone-at depot)
    (content-crate food crate1)
    (person-need person1 food)
)

(:goal (and
   (has-content-person person1 food)
))

)
