(define (domain p1)
(:requirements :strips :typing)

(:types 
    location 
    box 
    content
    person
    drone)

(:predicates 
    person-at ?person - person ?location - location
    is-injured ?person - person ?injured - injured
    box-at ?box - box ?location - location
    content-box ?content - content ?box - box
    has-content-person ?person - person ?content - content
    drone-at ?drone - drone ?location - location
    has-box-drone ?drone - drone ?box1 - box ?box2 - box
)


)