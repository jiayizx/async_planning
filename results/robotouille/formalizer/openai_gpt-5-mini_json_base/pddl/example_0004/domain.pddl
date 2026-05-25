(define (domain robotouille-temporal)
  (:requirements :durative-actions :typing)
  (:types station player item)

  (:predicates
    (istable ?s - station)
    (isstove ?s - station)
    (isboard ?s - station)
    (isfryer ?s - station)
    (issink ?s - station)

    (isrobot ?p - player)

    (loc ?p - player ?s - station)
    (at ?i - item ?s - station)
    (on ?i - item ?s - station)
    (has ?p - player ?i - item)
    (nothing ?p - player)

    (atop ?itop - item ?ibot - item)
    (clear ?i - item)

    (empty ?s - station)
    (vacant ?s - station)

    (iscookable ?i - item)
    (iscooked ?i - item)
    (iscuttable ?i - item)
    (iscut ?i - item)
    (isfryable ?i - item)
    (isfried ?i - item)

    (item-free ?i - item)
  )

  (:durative-action move
    :parameters (?p - player ?from - station ?to - station)
    :duration (= ?duration 1)
    :condition (and (at start (loc ?p ?from)) (at start (vacant ?to)))
    :effect (and (at start (not (loc ?p ?from))) (at end (loc ?p ?to)) (at end (vacant ?from)) (at start (not (vacant ?to))))
  )

  (:durative-action pick-up
    :parameters (?p - player ?i - item ?s - station)
    :duration (= ?duration 1)
    :condition (and (at start (nothing ?p)) (at start (on ?i ?s)) (at start (at ?i ?s)) (at start (clear ?i)) (at start (item-free ?i)) (at start (loc ?p ?s)))
    :effect (and (at start (not (nothing ?p))) (at start (not (on ?i ?s))) (at start (not (at ?i ?s))) (at end (has ?p ?i)) (at end (empty ?s)) (at end (not (clear ?i))))
  )

  (:durative-action place
    :parameters (?p - player ?i - item ?s - station)
    :duration (= ?duration 1)
    :condition (and (at start (has ?p ?i)) (at start (loc ?p ?s)) (at start (empty ?s)))
    :effect (and (at start (not (has ?p ?i))) (at start (not (empty ?s))) (at end (nothing ?p)) (at end (on ?i ?s)) (at end (at ?i ?s)) (at end (clear ?i))))

  (:durative-action stack
    :parameters (?p - player ?itop - item ?ibot - item ?s - station)
    :duration (= ?duration 1)
    :condition (and (at start (has ?p ?itop)) (at start (clear ?ibot)) (at start (loc ?p ?s)) (at start (at ?ibot ?s)) (at start (item-free ?itop)))
    :effect (and (at start (not (has ?p ?itop))) (at end (nothing ?p)) (at end (at ?itop ?s)) (at end (atop ?itop ?ibot)) (at end (clear ?itop)) (at end (not (clear ?ibot)))))

  (:durative-action unstack
    :parameters (?p - player ?itop - item ?ibot - item ?s - station)
    :duration (= ?duration 1)
    :condition (and (at start (nothing ?p)) (at start (clear ?itop)) (at start (atop ?itop ?ibot)) (at start (loc ?p ?s)) (at start (at ?itop ?s)) (at start (at ?ibot ?s)) (at start (item-free ?itop)))
    :effect (and (at start (not (nothing ?p))) (at start (not (at ?itop ?s))) (at start (not (atop ?itop ?ibot))) (at end (has ?p ?itop)) (at end (clear ?ibot)) (at end (not (clear ?itop)))))

  (:durative-action cook
    :parameters (?p - player ?i - item ?s - station)
    :duration (= ?duration 3)
    :condition (and (at start (loc ?p ?s)) (at start (nothing ?p)) (at start (on ?i ?s)) (at start (clear ?i)) (at start (isstove ?s)) (at start (iscookable ?i)) (at start (item-free ?i)))
    :effect (and (at start (not (item-free ?i))) (at end (iscooked ?i)) (at end (item-free ?i))))

  (:durative-action cut
    :parameters (?p - player ?i - item ?s - station)
    :duration (= ?duration 3)
    :condition (and (at start (loc ?p ?s)) (at start (nothing ?p)) (at start (on ?i ?s)) (at start (clear ?i)) (at start (isboard ?s)) (at start (iscuttable ?i)) (at start (item-free ?i)) (over all (loc ?p ?s)))
    :effect (and (at start (not (item-free ?i))) (at end (iscut ?i)) (at end (item-free ?i))))

  (:durative-action fry
    :parameters (?p - player ?i - item ?s - station)
    :duration (= ?duration 3)
    :condition (and (at start (loc ?p ?s)) (at start (nothing ?p)) (at start (on ?i ?s)) (at start (clear ?i)) (at start (isfryer ?s)) (at start (isfryable ?i)) (at start (item-free ?i)))
    :effect (and (at start (not (item-free ?i))) (at end (isfried ?i)) (at end (item-free ?i))))
)
