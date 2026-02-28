(define (domain p1)
(:requirements :strips :typing)

(:types 
    location 
    crate 
    content
    person
    drone
    arm
) 

(:predicates 
    (person-at ?person - person ?location - location)
    (is-injured ?person - person)
    (crate-at ?crate - crate ?location - location)
    (content-crate ?content - content ?crate - crate)
    (has-content-person ?person - person ?content - content)
    (person-need ?person - person ?content - content)
    (drone-at ?drone - drone ?location - location)
    (has-crate-drone-arm ?drone - drone ?arm - arm ?crate - crate)
    (empty-arm ?drone - drone ?arm - arm)
)

(:action pick-up-crate
    :parameters (
        ?crate - crate
        ?location - location
        ?drone - drone
        ?arm - arm
    )
    :precondition (and 
        (empty-arm ?drone ?arm)                 
        (drone-at ?drone ?location)       
        (crate-at ?crate ?location)           
    )
    :effect (and
        (has-crate-drone-arm ?drone ?arm ?crate)     
        (not (empty-arm ?drone ?arm))           
        (not (crate-at ?crate ?location))     
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

(:action drop-crate
    :parameters (
        ?location - location
        ?person - person
        ?crate - crate
        ?arm - arm
        ?content - content
        ?drone - drone
    )
    :precondition (and 
        (person-at ?person ?location)     
        (drone-at ?drone ?location)       
        (has-crate-drone-arm ?drone ?arm ?crate)     
        (content-crate ?content ?crate)          
    )
    :effect (and 
        (not (has-crate-drone-arm ?drone ?arm ?crate))   
        (has-content-person ?person ?content) 
        (empty-arm ?drone ?arm)                      
)
)
)