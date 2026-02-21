(define (domain p1)
(:requirements :strips :typing)

(:types 
    location 
    box 
    content
    person
    drone
    arm
)

(:predicates 
    (person-at ?person - person ?location - location)
    (is-injured ?person - person)
    (box-at ?box - box ?location - location)
    (content-box ?content - content ?box - box)
    (has-content-person ?person - person ?content - content)
    (person-need ?person - person ?content - content)
    (drone-at ?drone - drone ?location - location)
    (has-box-drone-arm ?arm - arm ?box - box)
    (empty-arm ?arm - arm)
)

(:action pick-up-box
    :parameters (
        ?box - box
        ?location - location
        ?drone - drone
        ?arm - arm
    )
    :precondition (and 
        (empty-arm ?arm)                 
        (drone-at ?drone ?location)       
        (box-at ?box ?location)           
    )
    :effect (and
        (has-box-drone-arm ?arm ?box)     
        (not (empty-arm ?arm))           
        (not (box-at ?box ?location))     
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
        (not (drone-at ?drone ?location_from)) 
        (drone-at ?drone ?location_to)         
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
        (person-at ?person ?location)     
        (drone-at ?drone ?location)       
        (has-box-drone-arm ?arm ?box)     
        (content-box ?content ?box)       
        (person-need ?person ?content)    
    )
    :effect (and 
        (not (has-box-drone-arm ?arm ?box))   
        (has-content-person ?person ?content) 
        (empty-arm ?arm)                      
)
)
)