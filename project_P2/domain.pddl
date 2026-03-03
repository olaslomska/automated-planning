(define (domain p1)
(:requirements :strips :typing)

(:types 
    location 
    crate 
    content
    person
    drone
    carrier
    carrier_space
    num
) 

(:predicates 
    (person-at ?person - person ?location - location)
    (crate-at ?crate - crate ?location - location)
    (content-crate ?content - content ?crate - crate)
    (has-content-person ?person - person ?content - content)
    (drone-at ?drone - drone ?location - location)
    (carrier-at ?carrier - carrier ?location - location)
    (empty-space ?carrier - carrier ?space - carrier_space)
    (next ?numA - num ?numB - num) 
    (crate-at-space ?crate - crate ?carrier - carrier ?space - carrier_space) 
)

(:action put-crate-in-carrier
    :parameters (
        ?crate - crate
        ?location - location
        ?drone - drone
        ?carrier - carrier
        ?carrier_space - carrier_space
    )
    :precondition (and                 
        (drone-at ?drone ?location)       
        (crate-at ?crate ?location)
        (carrier-at ?carrier ?location) \
        (empty-space ?carrier ?carrier_space)           
    )
    :effect (and
        (not (empty-space ?carrier ?carrier_space))
        (crate-at-space ?crate ?carrier ?carrier_space)        
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
        ?carrier_space - carrier_space
        ?person - person
        ?content - content 
    )
    :precondition (and                 
        (drone-at ?drone ?location)       
        (carrier-at ?carrier ?location)
        (crate-at-space ?crate ?carrier ?carrier_space)
        (person-at ?person ?location)           
        (content-crate ?content ?crate) 
    )
    :effect (and
        (empty-space ?carrier ?carrier_space)
        (not (crate-at-space ?crate ?carrier ?carrier_space))        
        (has-content-person ?person ?content)     
    )
)
) 