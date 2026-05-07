(define (domain planter_hanging)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (purchased_rope)
    (cord_cut)
    (tassel_tied)
    (stud_located)
    (hook_secured)
  )

  (:durative-action purchase_rope
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (purchased_rope)))
  )

  (:durative-action cut_cord
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (purchased_rope)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cord_cut)))
  )

  (:durative-action tie_tassel
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (cord_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tassel_tied)))
  )

  (:durative-action locate_stud
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stud_located)))
  )

  (:durative-action secure_hook
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (stud_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hook_secured)))
  )
)