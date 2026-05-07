(define (domain buy-piano)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (visited_done)
    (decided_kind_done)
    (paid_setup_done)
    (arrived_done)
    (final_choice_done)
  )

  ;; Step 1: Visit different instrument stores and used options
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (visited_done)) ) )

  ;; Step 2: Decide what kind of piano to buy
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (visited_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (decided_kind_done)) ) )

  ;; Step 3: Pay for piano and set up delivery
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step3)) (at start (decided_kind_done)) (at start (final_choice_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (paid_setup_done)) ) )

  ;; Step 4: Piano arrives at home
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step4)) (at start (paid_setup_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (arrived_done)) ) )

  ;; Step 5: Try a few options, make a final decision
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step5)) (at start (visited_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (final_choice_done)) ) )
)
