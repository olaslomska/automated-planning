(define (problem problem2) (:domain p1)
(:objects 
    drone1 - drone
    crate1 - crate
    crate2 - crate
    crate3 - crate
    person1 - person
    person2 - person
    person3 - person
    room1 warehouse depot - location
    food medicine - content
    left right - arm
)

(:init
    (person-at person1 room1)
    (person-at person2 room1)
    (person-at person3 room1)
    (crate-at crate1 warehouse)
    (crate-at crate2 warehouse)
    (crate-at crate3 warehouse)
    (content-crate food crate1)
    (content-crate medicine crate2)
    (content-crate food crate3)
    (drone-at drone1 depot)
    (person-need person1 food)
    (person-need person2 food)
    (person-need person3 medicine)  
    (empty-arm drone1 left)
    (empty-arm drone1 right)
)

(:goal (and
   (has-content-person person1 food)
   (has-content-person person2 food)
   (has-content-person person3 medicine)
))

)
