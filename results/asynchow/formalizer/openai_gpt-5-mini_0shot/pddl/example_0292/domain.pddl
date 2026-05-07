(define (domain eat-kumquat)
  (:requirements :durative-actions :typing)
  (:types step)
  (:constants step1 step2 step3 step4 step5 step6 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (choose_done)
    (wash_done)
    (rub_done)
    (remove_seeds_done)
    (eat_done)
    (store_done)
  )

  ;; Step 1: Choose ripe kumquats (2 min = 120s)
  (:durative-action do_step1_choose
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (choose_done)) ) )

  ;; Step 2: Wash and dry the fruit (3 min = 180s) ; requires choose_done (i.e. step1 finished)
  (:durative-action do_step2_wash
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step2)) (at start (choose_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (wash_done)) ) )

  ;; Step 3: Rub the kumquat (1 min = 60s) ; requires wash_done (i.e. step2 finished)
  (:durative-action do_step3_rub
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (wash_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (rub_done)) ) )

  ;; Step 4: Remove the seeds (2 min = 120s) ; requires wash_done (i.e. step2 finished)
  (:durative-action do_step4_remove_seeds
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (wash_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (remove_seeds_done)) ) )

  ;; Step 5: Eat the kumquat (1 min = 60s) ; requires rub_done AND remove_seeds_done
  ;; Both rub_done and remove_seeds_done are produced at end of steps 3 and 4 respectively,
  ;; so requiring them at start forces step5 to wait until both predecessors finish.
  (:durative-action do_step5_eat
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step5)) (at start (rub_done)) (at start (remove_seeds_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (eat_done)) ) )

  ;; Step 6: Store extra kumquats (2 min = 120s) ; no predecessors
  (:durative-action do_step6_store
    :duration (= ?duration 120)
    :condition (at start (step_pending step6))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (store_done)) ) )
)
