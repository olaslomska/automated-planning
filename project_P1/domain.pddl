(define (domain p1)
(:requirements :strips :typing)

(:types 
    location 
    box 
    content
    person
    drone
    arm)

(:predicates 
    person-at ?person - person ?location - location
    is-injured ?person - person ?injured - injured
    box-at ?box - box ?location - location
    content-box ?content - content ?box - box
    has-content-person ?person - person ?content - content
    person-need ?person ?content
    drone-at ?drone - drone ?location - location
    has-box-drone-arm ?arm - arm ?box - box
)

(:action pick-up-box
    :parameters (
        ?box - box
        ?location - location
        ?drone - drone
        ?arm - arm
    )
    :precondition (and 
    (or (not (has-box-drone-arm ?arm))) ; narazie zrobione jest tak, że trzeba sprecyzować które ramię
    (box-at ?box ?location)
    (drone-at ?drone ?location)
    )
    :effect (
        (has-box-drone-arm ?arm ?box)
    )
)

(:action drone-move
    :parameters (
        ?location_from - location
        ?location_to - location
        ?drone - drone
    )
    :precondition (and 
    (drone-at ?drone ?location_from)
    )
    :effect (and 
        (box-at ?box ?location_to)
    )
)

(:action drop-box
    :parameters (
        ?location - location
        ?person - person
        ?box - box
        ?arm - arm
        ?content - content
        ?drone - drone
    )
    :precondition (and 
    (person-at ?location)
    (drone-at ?drone ?location)
    (has-box-drone-arm ?arm ?box)
    (not (has-content-person ?person ?content))
    (content-box ?content ?box)
    (person-need ?person ?content)
    
    )
    :effect (and 
    (not(has-box-drone-arm ?arm ?box))
    (has-person-content ?person ?content)
    )
)
)
