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
    (crate-at crate1 warehouse)
    (content-crate food crate1)
    (drone-at drone1 depot)
    (empty-arm drone1 left)
    (empty-arm drone1 right)
)

(:goal (and
   (has-content-person person1 food)
))

)
