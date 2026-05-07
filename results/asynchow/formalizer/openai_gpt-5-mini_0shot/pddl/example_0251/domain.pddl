(define (domain find_neutrons)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; semantic predicates, one unique predicate produced by each action
    (located_done)
    (atomic_number_done)
    (atomic_weight_done)
    (rounded_done)
    (subtracted_done)
    (remember_formula_done)
  )

  ;; Action for Step 1: Locate the element on the periodic table. (1 minute = 60 seconds)
  (:durative-action do_step1_locate
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (located_done))
    )
  )

  ;; Action for Step 2: Find the element's atomic number. (1 minute = 60 seconds)
  ;; Predecessor: Step1
  (:durative-action do_step2_atomic_number
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step2)) (at start (located_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (atomic_number_done))
    )
  )

  ;; Action for Step 3: Find the element's atomic weight. (1 minute = 60 seconds)
  ;; Predecessor: Step1
  (:durative-action do_step3_atomic_weight
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (located_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (atomic_weight_done))
    )
  )

  ;; Action for Step 4: Round off the atomic weight to nearest whole number. (1 minute = 60 seconds)
  ;; Predecessor: Step3
  (:durative-action do_step4_round
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step4)) (at start (atomic_weight_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (rounded_done))
    )
  )

  ;; Action for Step 5: Subtract atomic number from atomic mass. (1 minute = 60 seconds)
  ;; Predecessors: Step2 and Step4
  (:durative-action do_step5_subtract
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step5)) (at start (atomic_number_done)) (at start (rounded_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (subtracted_done))
    )
  )

  ;; Action for Step 6: Remember the formula. (1 minute = 60 seconds)
  ;; Predecessor: Step5
  (:durative-action do_step6_remember
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (subtracted_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (remember_formula_done))
    )
  )
)
