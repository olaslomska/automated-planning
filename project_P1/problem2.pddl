(define (problem problem1) (:domain p1)
(:objects 
    drone1 - drone
    box1 - box
    person1 - person
    room1 warehouse depot - location
    food medicine - content
    left right - arm
)

(:init
    (person-at person1 room1)
    (not (is-injured person1))
    (box-at box1 warehouse)
    (content-box food box1)
    (drone-at drone1 depot)
    (content-box food box1)
    (person-need person1 food)
    (empty-arm left)
    (empty-arm right)
)

(:goal (and
   (has-content-person person1 food)
))

)
