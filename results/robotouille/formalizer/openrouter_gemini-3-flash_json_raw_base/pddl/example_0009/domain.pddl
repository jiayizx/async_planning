(define (domain robotouille)
    (:requirements :durative-actions :typing)
    (:types station player item container meal)

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
        (ispot ?c - container)
        (isbowl ?c - container)
        (iswater ?m - meal)
        (container_at ?c - container ?s - station)
        (container_empty ?c - container)
        (container-free ?c - container)
        (has_container ?p - player ?c - container)
        (in ?m - meal ?c - container)
        (addedto ?i - item ?m - meal)
        (isboiling ?m - meal)
    )

    (:durative-action move
        :parameters (?p - player ?from - station ?to - station)
        :duration (= ?duration 1)
        :condition (at start (and (loc ?p ?from) (vacant ?to)))
        :effect (and (at start (and (not (loc ?p ?from)) (loc ?p ?to) (vacant ?from) (not (vacant ?to)))))
    )

    (:durative-action pick-up
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 1)
        :condition (at start (and (nothing ?p) (on ?i ?s) (at ?i ?s) (clear ?i) (item-free ?i) (loc ?p ?s)))
        :effect (and (at start (and (not (nothing ?p)) (not (on ?i ?s)) (not (at ?i ?s))))
                     (at end (and (has ?p ?i) (empty ?s) (not (clear ?i)))))
    )

    (:durative-action place
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 1)
        :condition (at start (and (has ?p ?i) (loc ?p ?s) (empty ?s)))
        :effect (and (at start (and (not (has ?p ?i)) (not (empty ?s))))
                     (at end (and (nothing ?p) (on ?i ?s) (at ?i ?s) (clear ?i))))
    )

    (:durative-action stack
        :parameters (?p - player ?itop - item ?ibot - item ?s - station)
        :duration (= ?duration 1)
        :condition (at start (and (has ?p ?itop) (clear ?ibot) (loc ?p ?s) (at ?ibot ?s) (item-free ?itop)))
        :effect (and (at start (not (has ?p ?itop)))
                     (at end (and (nothing ?p) (at ?itop ?s) (atop ?itop ?ibot) (clear ?itop) (not (clear ?ibot)))))
    )

    (:durative-action unstack
        :parameters (?p - player ?itop - item ?ibot - item ?s - station)
        :duration (= ?duration 1)
        :condition (at start (and (nothing ?p) (clear ?itop) (atop ?itop ?ibot) (loc ?p ?s) (at ?itop ?s) (at ?ibot ?s) (item-free ?itop)))
        :effect (and (at start (and (not (nothing ?p)) (not (at ?itop ?s)) (not (atop ?itop ?ibot))))
                     (at end (and (has ?p ?itop) (clear ?ibot) (not (clear ?itop)))))
    )

    (:durative-action cook
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 3)
        :condition (at start (and (loc ?p ?s) (nothing ?p) (on ?i ?s) (clear ?i) (isstove ?s) (iscookable ?i) (item-free ?i)))
        :effect (and (at start (not (item-free ?i))) (at end (and (iscooked ?i) (item-free ?i))))
    )

    (:durative-action cut
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 3)
        :condition (and (at start (and (loc ?p ?s) (nothing ?p) (on ?i ?s) (clear ?i) (isboard ?s) (iscuttable ?i) (item-free ?i)))
                        (over all (loc ?p ?s)))
        :effect (and (at start (not (item-free ?i))) (at end (and (iscut ?i) (item-free ?i))))
    )

    (:durative-action fry
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 3)
        :condition (at start (and (loc ?p ?s) (nothing ?p) (on ?i ?s) (clear ?i) (isfryer ?s) (isfryable ?i) (item-free ?i)))
        :effect (and (at start (not (item-free ?i))) (at end (and (isfried ?i) (item-free ?i))))
    )

    (:durative-action pick-up-container
        :parameters (?p - player ?c - container ?s - station)
        :duration (= ?duration 1)
        :condition (at start (and (nothing ?p) (container_at ?c ?s) (loc ?p ?s) (container-free ?c)))
        :effect (and (at start (and (not (nothing ?p)) (not (container_at ?c ?s))))
                     (at end (and (has_container ?p ?c) (empty ?s))))
    )

    (:durative-action place-container
        :parameters (?p - player ?c - container ?s - station)
        :duration (= ?duration 1)
        :condition (at start (and (has_container ?p ?c) (loc ?p ?s) (empty ?s)))
        :effect (and (at start (and (not (has_container ?p ?c)) (not (empty ?s))))
                     (at end (and (nothing ?p) (container_at ?c ?s))))
    )

    (:durative-action fill-pot
        :parameters (?p - player ?c - container ?m - meal ?s - station)
        :duration (= ?duration 3)
        :condition (at start (and (ispot ?c) (issink ?s) (loc ?p ?s) (container_at ?c ?s) (container_empty ?c) (nothing ?p) (container-free ?c) (iswater ?m)))
        :effect (and (at start (not (container-free ?c))) (at end (and (not (container_empty ?c)) (container-free ?c) (in ?m ?c))))
    )

    (:durative-action boil-water
        :parameters (?p - player ?c - container ?m - meal ?s - station)
        :duration (= ?duration 3)
        :condition (at start (and (ispot ?c) (isstove ?s) (loc ?p ?s) (container_at ?c ?s) (in ?m ?c) (iswater ?m) (nothing ?p) (container-free ?c)))
        :effect (and (at start (not (container-free ?c))) (at end (and (isboiling ?m) (container-free ?c))))
    )

    (:durative-action add-to
        :parameters (?p - player ?i - item ?m - meal ?c - container ?s - station)
        :duration (= ?duration 1)
        :condition (at start (and (has ?p ?i) (ispot ?c) (container_at ?c ?s) (loc ?p ?s) (in ?m ?c)))
        :effect (and (at start (not (has ?p ?i))) (at end (and (nothing ?p) (addedto ?i ?m))))
    )

    (:durative-action fill-bowl
        :parameters (?p - player ?cbowl - container ?cpot - container ?m - meal ?s - station)
        :duration (= ?duration 1)
        :condition (at start (and (isbowl ?cbowl) (container_at ?cbowl ?s) (loc ?p ?s) (container_empty ?cbowl) (has_container ?p ?cpot) (in ?m ?cpot)))
        :effect (and (at start (and (not (has_container ?p ?cpot)) (not (container_empty ?cbowl))))
                     (at end (and (nothing ?p) (container_at ?cpot ?s) (in ?m ?cbowl) (container_empty ?cpot))))
    )
)