(define (domain robotouille)
    (:requirements :strips :typing)
    (:types
        station player item container water
    )
    (:predicates
        ;; === Station identity ===
        (istable ?s - station)
        (isstove ?s - station)
        (isboard ?s - station)
        (isfryer ?s - station)
        (issink ?s - station)

        ;; === Item identity ===
        (isrobot ?p - player)
        (istopbun ?i - item)
        (isbottombun ?i - item)
        (isbread ?i - item)
        (islettuce ?i - item)
        (isonion ?i - item)
        (istomato ?i - item)
        (ispatty ?i - item)
        (ischicken ?i - item)
        (ischeese ?i - item)
        (ispotato ?i - item)

        ;; === Item capability flags ===
        (iscuttable ?i - item)
        (iscookable ?i - item)
        (isfryable ?i - item)
        (isfryableifcut ?i - item)

        ;; === Item state (processing results) ===
        (iscut ?i - item)
        (iscooked ?i - item)
        (isfried ?i - item)

        ;; === Spatial: player ===
        (loc ?p - player ?s - station)
        (nothing ?p - player)
        (nocontainer ?p - player)

        ;; === Spatial: items on stations ===
        (at ?i - item ?s - station)
        (on ?i - item ?s - station)
        (clear ?i - item)
        (atop ?i1 - item ?i2 - item)
        (has ?p - player ?i - item)

        ;; === Spatial: stations ===
        (empty ?s - station)
        (vacant ?s - station)

        ;; === Container predicates ===
        (container_at ?c - container ?s - station)
        (has_container ?p - player ?c - container)
        (container_on_station ?c - container)
        (ispottype ?c - container)
        (isbowltype ?c - container)

        ;; === Water / soup predicates ===
        (has_water ?c - container ?w - water)
        (isboiling ?w - water)
        (addedto ?i - item ?w - water)
        (in ?w - water ?c - container)
        (water_available ?w - water)
    )

    ;; =====================================================================
    ;; MOVEMENT AND LOGISTICS
    ;; =====================================================================

    (:action move
        :parameters (?p - player ?s1 - station ?s2 - station)
        :precondition (and
            (loc ?p ?s1)
            (vacant ?s2)
        )
        :effect (and
            (not (loc ?p ?s1))
            (not (vacant ?s2))
            (loc ?p ?s2)
            (vacant ?s1)
        )
    )

    (:action pick-up
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and
            (nothing ?p)
            (on ?i ?s)
            (loc ?p ?s)
            (clear ?i)
        )
        :effect (and
            (not (nothing ?p))
            (not (on ?i ?s))
            (not (at ?i ?s))
            (not (clear ?i))
            (has ?p ?i)
            (empty ?s)
        )
    )

    (:action unstack
        :parameters (?p - player ?i1 - item ?i2 - item ?s - station)
        :precondition (and
            (nothing ?p)
            (clear ?i1)
            (atop ?i1 ?i2)
            (loc ?p ?s)
            (at ?i1 ?s)
            (at ?i2 ?s)
        )
        :effect (and
            (not (nothing ?p))
            (not (clear ?i1))
            (not (atop ?i1 ?i2))
            (not (at ?i1 ?s))
            (has ?p ?i1)
            (clear ?i2)
        )
    )

    (:action place
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and
            (has ?p ?i)
            (loc ?p ?s)
            (empty ?s)
        )
        :effect (and
            (not (has ?p ?i))
            (not (empty ?s))
            (nothing ?p)
            (at ?i ?s)
            (clear ?i)
            (on ?i ?s)
        )
    )

    (:action stack
        :parameters (?p - player ?i1 - item ?i2 - item ?s - station)
        :precondition (and
            (has ?p ?i1)
            (clear ?i2)
            (loc ?p ?s)
            (at ?i2 ?s)
        )
        :effect (and
            (not (has ?p ?i1))
            (not (clear ?i2))
            (nothing ?p)
            (at ?i1 ?s)
            (atop ?i1 ?i2)
            (clear ?i1)
        )
    )

    ;; =====================================================================
    ;; PROCESSING ACTIONS
    ;; =====================================================================

    (:action cook
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and
            (isstove ?s)
            (iscookable ?i)
            (on ?i ?s)
            (loc ?p ?s)
            (clear ?i)
        )
        :effect (iscooked ?i)
    )

    (:action cut
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and
            (isboard ?s)
            (iscuttable ?i)
            (on ?i ?s)
            (loc ?p ?s)
            (clear ?i)
        )
        :effect (iscut ?i)
    )

    (:action fry
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and
            (isfryer ?s)
            (isfryable ?i)
            (on ?i ?s)
            (loc ?p ?s)
            (clear ?i)
        )
        :effect (isfried ?i)
    )

    (:action fry_cut_item
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and
            (isfryer ?s)
            (isfryableifcut ?i)
            (iscut ?i)
            (on ?i ?s)
            (loc ?p ?s)
            (clear ?i)
        )
        :effect (isfried ?i)
    )

    ;; =====================================================================
    ;; CONTAINER ACTIONS
    ;; =====================================================================

    (:action pick-up-container
        :parameters (?p - player ?c - container ?s - station)
        :precondition (and
            (nocontainer ?p)
            (nothing ?p)
            (container_at ?c ?s)
            (container_on_station ?c)
            (loc ?p ?s)
        )
        :effect (and
            (not (nocontainer ?p))
            (not (container_at ?c ?s))
            (not (container_on_station ?c))
            (has_container ?p ?c)
        )
    )

    (:action place-container
        :parameters (?p - player ?c - container ?s - station)
        :precondition (and
            (has_container ?p ?c)
            (loc ?p ?s)
        )
        :effect (and
            (not (has_container ?p ?c))
            (nocontainer ?p)
            (container_at ?c ?s)
            (container_on_station ?c)
        )
    )

    (:action fill
        :parameters (?p - player ?c - container ?w - water ?s - station)
        :precondition (and
            (issink ?s)
            (loc ?p ?s)
            (ispottype ?c)
            (container_at ?c ?s)
            (container_on_station ?c)
            (water_available ?w)
        )
        :effect (and
            (not (water_available ?w))
            (has_water ?c ?w)
            (in ?w ?c)
        )
    )

    (:action add-to-pot
        :parameters (?p - player ?i - item ?c - container ?w - water ?s - station)
        :precondition (and
            (has ?p ?i)
            (loc ?p ?s)
            (container_at ?c ?s)
            (has_water ?c ?w)
            (ispottype ?c)
        )
        :effect (and
            (not (has ?p ?i))
            (nothing ?p)
            (addedto ?i ?w)
        )
    )

    (:action boil
        :parameters (?p - player ?c - container ?w - water ?s - station)
        :precondition (and
            (isstove ?s)
            (loc ?p ?s)
            (container_at ?c ?s)
            (has_water ?c ?w)
            (ispottype ?c)
        )
        :effect (isboiling ?w)
    )

    (:action pour
        :parameters (?p - player ?pot - container ?bowl - container ?w - water ?s - station)
        :precondition (and
            (loc ?p ?s)
            (ispottype ?pot)
            (isbowltype ?bowl)
            (container_at ?pot ?s)
            (container_at ?bowl ?s)
            (has_water ?pot ?w)
            (in ?w ?pot)
        )
        :effect (and
            (not (has_water ?pot ?w))
            (not (in ?w ?pot))
            (has_water ?bowl ?w)
            (in ?w ?bowl)
        )
    )
)
