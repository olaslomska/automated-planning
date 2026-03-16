(define (domain p3)
(:requirements :strips :typing :durative-actions :numeric-fluents)

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
    (drone-free ?d - drone)
    (carrier-free ?c - carrier)
    (crate-free ?c - crate)
    (person-free ?p - person)
)

(:functions
    (fly-cost ?location_from - location ?location_to - location) - number
)

(:durative-action put-crate-in-carrier
    :parameters (
        ?crate - crate
        ?location - location
        ?drone - drone
        ?carrier - carrier
        ?n_current - num
        ?n_next - num
    )
    :duration (= ?duration 5)
    :condition (and 
        (at start (and 
            (crate-at ?crate ?location) 
            (crates-in-carrier ?carrier ?n_current) 
            (drone-free ?drone)
            (carrier-free ?carrier)
            (crate-free ?crate)     
            )
        )
        (over all (and
            (drone-at ?drone ?location) 
            (carrier-at ?carrier ?location)
            (next-num ?n_current ?n_next)  
        ))                  
    )
    :effect (and
        (at start (and 
            (not (drone-free ?drone))
            (not (carrier-free ?carrier))
            (not (crate-free ?crate)) 
            (not (crate-at ?crate ?location))  
            (not (crates-in-carrier ?carrier ?n_current))  
        ))
        (at end (and 
            (drone-free ?drone)
            (carrier-free ?carrier)
            (crate-free ?crate)  
            (crates-in-carrier ?carrier ?n_next)
            (in-carrier ?crate ?carrier)  
        ))
    )
)

(:durative-action move-carrier
    :parameters (
        ?location_from - location
        ?location_to - location
        ?drone - drone
        ?carrier - carrier
    )
    :duration (= ?duration (fly-cost ?location_from ?location_to))
    :condition (and 
        (at start (and
            (drone-at ?drone ?location_from)
            (carrier-at ?carrier ?location_from)
            (drone-free ?drone)
            (carrier-free ?carrier)
        ))
    )
    :effect (and 
        (at start (and
            (not (drone-free ?drone))
            (not (carrier-free ?carrier))
            (not (drone-at ?drone ?location_from))
            (not (carrier-at ?carrier ?location_from))
        ))
        (at end (and
            (drone-free ?drone)
            (carrier-free ?carrier)
            (drone-at ?drone ?location_to)
            (carrier-at ?carrier ?location_to) 
        ))        
    )
)

(:durative-action pick-and-drop
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
    :duration (= ?duration 5)
    :condition (and 
        (at start (and 
            (drone-at ?drone ?location)       
            (carrier-at ?carrier ?location)
            (in-carrier ?crate ?carrier)
            (person-at ?person ?location)           
            (content-crate ?content ?crate) 
            (crates-in-carrier ?carrier ?n_current)
            (next-num ?n_prev ?n_current)
            (drone-free ?drone)
            (carrier-free ?carrier)
            (person-free ?person)
            (crate-free ?crate)
        ))
        (over all (and
            (drone-at ?drone ?location) 
            (carrier-at ?carrier ?location)
            (person-at ?person ?location)           
        ))                  
    )
    :effect (and
        (at start (and 
            (not (crates-in-carrier ?carrier ?n_current))
            (crates-in-carrier ?carrier ?n_prev)
            (not (in-carrier ?crate ?carrier))          
            (not (drone-free ?drone))
            (not (carrier-free ?carrier))
            (not (person-free ?person))
            (not (crate-free ?crate))
        ))
        (at end (and 
            (drone-free ?drone)
            (carrier-free ?carrier)
            (person-free ?person)
            (crate-free ?crate)
            (has-content-person ?person ?content) 
        ))
    )
)
)