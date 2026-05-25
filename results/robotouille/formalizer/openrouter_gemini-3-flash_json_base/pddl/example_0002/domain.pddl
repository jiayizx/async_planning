(define (domain robotouille)
    (:requirements :durative-actions :typing)
    (:types station player item)

    (:predicates
        (istable ?s - station)
        (isstove ?s - station)
        (isboard ?s - station)
        (isfryer ?s - station)
        (issink ?s - station)
        (loc ?p - player ?s - station)
        (at ?i - item ?s - station)
        (has ?p - player ?i - item)
        (nothing ?p - player)
        (on ?i - item ?s - station)
        (atop ?itop - item ?ibot - item)
        (clear ?i - item)
        (empty ?s - station)
        (vacant ?s - station)
        (item-free ?i - item)
        (iscookable ?i - item)
        (iscooked ?i - item)
        (iscuttable ?i - item)
        (iscut ?i - item)
        (isfryable ?i - item)
        (isfried ?i - item)
    )

    (:durative-action move
        :parameters (?p - player ?from - station ?to - station)
        :duration (= ?duration 1)
        :condition (at start (and (loc ?p ?from) (vacant ?to)))
        :effect (and
            (at start (and (not (loc ?p ?from)) (loc ?p ?to) (vacant ?from) (not (vacant ?to))))
        )
    )

    (:durative-action pick-up
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 1)
        :condition (at start (and (nothing ?p) (on ?i ?s) (at ?i ?s) (clear ?i) (item-free ?i) (loc ?p ?s)))
        :effect (and
            (at start (and (not (nothing ?p)) (not (on ?i ?s)) (not (at ?i ?s))))
            (at end (and (has ?p ?i) (empty ?s) (not (clear ?i))))
        )
    )

    (:durative-action place
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 1)
        :condition (at start (and (has ?p ?i) (loc ?p ?s) (empty ?s)))
        :effect (and
            (at start (and (not (has ?p ?i)) (not (empty ?s))))
            (at end (and (nothing ?p) (on ?i ?s) (at ?i ?s) (clear ?i)))
        )
    )

    (:durative-action stack
        :parameters (?p - player ?itop - item ?ibot - item ?s - station)
        :duration (= ?duration 1)
        :condition (at start (and (has ?p ?itop) (clear ?ibot) (loc ?p ?s) (at ?ibot ?s) (item-free ?itop)))
        :effect (and
            (at start (not (has ?p ?itop)))
            (at end (and (nothing ?p) (at ?itop ?s) (atop ?itop ?ibot) (clear ?itop) (not (clear ?ibot))))
        )
    )

    (:durative-action unstack
        :parameters (?p - player ?itop - item ?ibot - item ?s - station)
        :duration (= ?duration 1)
        :condition (at start (and (nothing ?p) (clear ?itop) (atop ?itop ?ibot) (loc ?p ?s) (at ?itop ?s) (at ?ibot ?s) (item-free ?itop)))
        :effect (and
            (at start (and (not (nothing ?p)) (not (at ?itop ?s)) (not (atop ?itop ?ibot))))
            (at end (and (has ?p ?itop) (clear ?ibot) (not (clear ?itop))))
        )
    )

    (:durative-action cook
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 3)
        :condition (at start (and (loc ?p ?s) (nothing ?p) (on ?i ?s) (clear ?i) (isstove ?s) (iscookable ?i) (item-free ?i)))
        :effect (and
            (at start (not (item-free ?i)))
            (at end (and (iscooked ?i) (item-free ?i)))
        )
    )

    (:durative-action cut
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 3)
        :condition (and
            (at start (and (loc ?p ?s) (nothing ?p) (on ?i ?s) (clear ?i) (isboard ?s) (iscuttable ?i) (item-free ?i)))
            (over all (loc ?p ?s))
        )
        :effect (and
            (at start (not (item-free ?i)))
            (at end (and (iscut ?i) (item-free ?i)))
        )
    )

    (:durative-action fry
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 3)
        :condition (at start (and (loc ?p ?s) (nothing ?p) (on ?i ?s) (clear ?i) (isfryer ?s) (isfryable ?i) (item-free ?i)))
        :effect (and
            (at start (not (item-free ?i)))
            (at end (and (isfried ?i) (item-free ?i)))
        )
    )
)