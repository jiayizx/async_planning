(define (domain braid)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (d1)
    (d2)
    (d3)
    (d4)
    (d5)
    (d6)
    (d7)
    (d8)
    (d9)
    (d10)
    (d11)
    (d12)
    (d13)
    (d14)
    (d15)
    (d16)
    (d17)
    (d18)
    (d19)
    (d20)
  )

  ;; One durative-action per step. Conditions include only the direct
  ;; ordering predecessors given in the problem statement, enforced via
  ;; their semantic predicates (dN). Each action produces a unique dN
  ;; at end, and marks its step_done.

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (d19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (d20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d9)) (at start (d15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (d12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (d17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (d8)) (at start (d11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d9)) (at start (d14)) (at start (d18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15)))
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16)))
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17)))
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18)))
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19)))
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (d5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20)))
  )
)
