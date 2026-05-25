(define (domain robotouille)
  (:requirements :durative-actions :typing)
  (:types station player item container meal)

  (:predicates
    (isstove ?s - station)
    (isboard ?s - station)
    (isfryer ?s - station)
    (issink ?s - station)
    (istable ?s - station)

    (loc ?p - player ?s - station)

    (at ?i - item ?s - station)
    (on ?i - item ?s - station)
    (atop ?itop - item ?ibot - item)
    (clear ?i - item)

    (has ?p - player ?i - item)
    (nothing ?p - player)

    (empty ?s - station)
    (vacant ?s - station)

    (iscookable ?i - item)
    (iscooked ?i - item)
    (iscuttable ?i - item)
    (iscut ?i - item)
    (isfryable ?i - item)
    (isfried ?i - item)

    (item-free ?i - item)

    ; containers / soup predicates
    (container_at ?c - container ?s - station)
    (container_empty ?c - container)
    (has_container ?p - player ?c - container)
    (container-free ?c - container)
    (ispot ?c - container)
    (isbowl ?c - container)
    (iswater ?m - meal)
    (in ?m - meal ?c - container)
    (addedto ?i - item ?m - meal)
    (isboiling ?m - meal)
  )

  ; move
  (:durative-action move
    :parameters (?p - player ?from - station ?to - station)
    :duration (= ?duration 1)
    :condition (and (at start (loc ?p ?from)) (at start (vacant ?to)))
    :effect (and
      (at start (not (loc ?p ?from))) (at end (loc ?p ?to))
      (at end (vacant ?from)) (at start (not (vacant ?to)))
    )
  )

  ; pick-up
  (:durative-action pick-up
    :parameters (?p - player ?i - item ?s - station)
    :duration (= ?duration 1)
    :condition (and
      (at start (nothing ?p)) (at start (on ?i ?s)) (at start (at ?i ?s)) (at start (clear ?i)) (at start (item-free ?i)) (at start (loc ?p ?s))
    )
    :effect (and
      (at start (not (nothing ?p))) (at start (not (on ?i ?s))) (at start (not (at ?i ?s)))
      (at end (has ?p ?i)) (at end (empty ?s)) (at end (not (clear ?i)))
    )
  )

  ; place
  (:durative-action place
    :parameters (?p - player ?i - item ?s - station)
    :duration (= ?duration 1)
    :condition (and (at start (has ?p ?i)) (at start (loc ?p ?s)) (at start (empty ?s)))
    :effect (and
      (at start (not (has ?p ?i))) (at start (not (empty ?s)))
      (at end (nothing ?p)) (at end (on ?i ?s)) (at end (at ?i ?s)) (at end (clear ?i))
    )
  )

  ; stack
  (:durative-action stack
    :parameters (?p - player ?itop - item ?ibot - item ?s - station)
    :duration (= ?duration 1)
    :condition (and (at start (has ?p ?itop)) (at start (clear ?ibot)) (at start (loc ?p ?s)) (at start (at ?ibot ?s)) (at start (item-free ?itop)))
    :effect (and
      (at start (not (has ?p ?itop)))
      (at end (nothing ?p)) (at end (at ?itop ?s)) (at end (atop ?itop ?ibot)) (at end (clear ?itop)) (at end (not (clear ?ibot)))
    )
  )

  ; unstack
  (:durative-action unstack
    :parameters (?p - player ?itop - item ?ibot - item ?s - station)
    :duration (= ?duration 1)
    :condition (and (at start (nothing ?p)) (at start (clear ?itop)) (at start (atop ?itop ?ibot)) (at start (loc ?p ?s)) (at start (at ?itop ?s)) (at start (at ?ibot ?s)) (at start (item-free ?itop)))
    :effect (and
      (at start (not (nothing ?p))) (at start (not (at ?itop ?s))) (at start (not (atop ?itop ?ibot)))
      (at end (has ?p ?itop)) (at end (clear ?ibot)) (at end (not (clear ?itop)))
    )
  )

  ; cook
  (:durative-action cook
    :parameters (?p - player ?i - item ?s - station)
    :duration (= ?duration 3)
    :condition (and (at start (loc ?p ?s)) (at start (nothing ?p)) (at start (on ?i ?s)) (at start (clear ?i)) (at start (isstove ?s)) (at start (iscookable ?i)) (at start (item-free ?i)))
    :effect (and (at start (not (item-free ?i))) (at end (iscooked ?i)) (at end (item-free ?i)))
  )

  ; cut
  (:durative-action cut
    :parameters (?p - player ?i - item ?s - station)
    :duration (= ?duration 3)
    :condition (and (at start (loc ?p ?s)) (at start (nothing ?p)) (at start (on ?i ?s)) (at start (clear ?i)) (at start (isboard ?s)) (at start (iscuttable ?i)) (at start (item-free ?i)) (over all (loc ?p ?s)))
    :effect (and (at start (not (item-free ?i))) (at end (iscut ?i)) (at end (item-free ?i)))
  )

  ; fry
  (:durative-action fry
    :parameters (?p - player ?i - item ?s - station)
    :duration (= ?duration 3)
    :condition (and (at start (loc ?p ?s)) (at start (nothing ?p)) (at start (on ?i ?s)) (at start (clear ?i)) (at start (isfryer ?s)) (at start (isfryable ?i)) (at start (item-free ?i)))
    :effect (and (at start (not (item-free ?i))) (at end (isfried ?i)) (at end (item-free ?i)))
  )

  ; pick-up-container
  (:durative-action pick-up-container
    :parameters (?p - player ?c - container ?s - station)
    :duration (= ?duration 1)
    :condition (and (at start (nothing ?p)) (at start (container_at ?c ?s)) (at start (loc ?p ?s)) (at start (container-free ?c)))
    :effect (and (at start (not (nothing ?p))) (at start (not (container_at ?c ?s))) (at end (has_container ?p ?c)) (at end (empty ?s)))
  )

  ; place-container
  (:durative-action place-container
    :parameters (?p - player ?c - container ?s - station)
    :duration (= ?duration 1)
    :condition (and (at start (has_container ?p ?c)) (at start (loc ?p ?s)) (at start (empty ?s)))
    :effect (and (at start (not (has_container ?p ?c))) (at start (not (empty ?s))) (at end (nothing ?p)) (at end (container_at ?c ?s)))
  )

  ; fill-pot
  (:durative-action fill-pot
    :parameters (?p - player ?c - container ?m - meal ?s - station)
    :duration (= ?duration 3)
    :condition (and (at start (ispot ?c)) (at start (issink ?s)) (at start (loc ?p ?s)) (at start (container_at ?c ?s)) (at start (container_empty ?c)) (at start (nothing ?p)) (at start (container-free ?c)) (at start (iswater ?m)))
    :effect (and (at start (not (container-free ?c))) (at end (not (container_empty ?c))) (at end (container-free ?c)) (at end (in ?m ?c)))
  )

  ; boil-water
  (:durative-action boil-water
    :parameters (?p - player ?c - container ?m - meal ?s - station)
    :duration (= ?duration 3)
    :condition (and (at start (ispot ?c)) (at start (isstove ?s)) (at start (loc ?p ?s)) (at start (container_at ?c ?s)) (at start (in ?m ?c)) (at start (iswater ?m)) (at start (nothing ?p)) (at start (container-free ?c)))
    :effect (and (at start (not (container-free ?c))) (at end (isboiling ?m)) (at end (container-free ?c)))
  )

  ; add-to
  (:durative-action add-to
    :parameters (?p - player ?i - item ?m - meal ?c - container ?s - station)
    :duration (= ?duration 1)
    :condition (and (at start (has ?p ?i)) (at start (ispot ?c)) (at start (container_at ?c ?s)) (at start (loc ?p ?s)) (at start (in ?m ?c)))
    :effect (and (at start (not (has ?p ?i))) (at end (nothing ?p)) (at end (addedto ?i ?m)))
  )

  ; fill-bowl
  (:durative-action fill-bowl
    :parameters (?p - player ?cbowl - container ?cpot - container ?m - meal ?s - station)
    :duration (= ?duration 1)
    :condition (and (at start (isbowl ?cbowl)) (at start (container_at ?cbowl ?s)) (at start (loc ?p ?s)) (at start (container_empty ?cbowl)) (at start (has_container ?p ?cpot)) (at start (in ?m ?cpot)))
    :effect (and (at start (not (has_container ?p ?cpot))) (at start (not (container_empty ?cbowl))) (at end (nothing ?p)) (at end (container_at ?cpot ?s)) (at end (in ?m ?cbowl)) (at end (container_empty ?cpot)))
  )
)
