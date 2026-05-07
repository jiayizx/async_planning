(define (domain hanging_planters)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (tassel_tied)
    (hook_secured)
    (cord_cut)
    (rope_purchased)
    (stud_located))

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (cord_cut) (rope_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (tassel_tied)))))

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (step_pending ?s) (stud_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (hook_secured)))))

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (rope_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (cord_cut)))))

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (rope_purchased)))))

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (stud_located)))))
)