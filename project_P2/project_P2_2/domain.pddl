(define (domain p2)
(:requirements :strips :typing :action-costs)

(:types 
    location 
    crate 
    content
    person
    drone
    carrier
    num
) 

(:predicates 
    (person-at ?person - person ?location - location)
    (crate-at ?crate - crate ?location - location)
    (content-crate ?content - content ?crate - crate)
    (has-content-person ?person - person ?content - content)
    (drone-at ?drone - drone ?location - location)
    (carrier-at ?carrier - carrier ?location - location)
    (next-num ?numA - num ?numB - num) 
    (in-carrier ?crate - crate ?carrier - carrier)
    (crates-in-carrier ?carrier - carrier ?n - num)
    (carrier-capacity ?carrier - carrier ?n - num)
)

(:action put-crate-in-carrier
    :parameters (
        ?crate - crate
        ?location - location
        ?drone - drone
        ?carrier - carrier
        ?n_current - num
        ?n_next - num
    )
    :precondition (and                 
        (drone-at ?drone ?location)       
        (crate-at ?crate ?location)
        (carrier-at ?carrier ?location) 
        (crates-in-carrier ?carrier ?n_current)
        (next-num ?n_current ?n_next)
    )
    :effect (and
        (not (crates-in-carrier ?carrier ?n_current))
        (crates-in-carrier ?carrier ?n_next)
        (in-carrier ?crate ?carrier)        
        (not (crate-at ?crate ?location))    
    )
)

(:action move-carrier
    :parameters (
        ?location_from - location
        ?location_to - location
        ?drone - drone
        ?carrier - carrier
    )
    :precondition (and 
        (drone-at ?drone ?location_from)
        (carrier-at ?carrier ?location_from)  
    )
    :effect (and 
        (not (drone-at ?drone ?location_from))
        (drone-at ?drone ?location_to)
        (not (carrier-at ?carrier ?location_from))
        (carrier-at ?carrier ?location_to)     
    )
)

(:action pick-and-drop
    :parameters (
        ?crate - crate
        ?location - location
        ?drone - drone
        ?carrier - carrier
        ?person - person
        ?content - content 
        ?n_current - num
        ?n_prev - num
    )
    :precondition (and                 
        (drone-at ?drone ?location)       
        (carrier-at ?carrier ?location)
        (in-carrier ?crate ?carrier)
        (person-at ?person ?location)           
        (content-crate ?content ?crate) 
        (crates-in-carrier ?carrier ?n_current)
        (next-num ?n_prev ?n_current)
    )
    :effect (and
        (not (crates-in-carrier ?carrier ?n_current))
        (crates-in-carrier ?carrier ?n_prev)
        (not (in-carrier ?crate ?carrier))        
        (has-content-person ?person ?content)   
    )
)
)