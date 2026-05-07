(define (domain change-name-after-divorce)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (request_included)
    (ssn_changed)
    (dl_changed)
    (passport_changed)
    (name_change_completed)
  )

  ;; Step 1: include name change request with divorce petition
  (:durative-action do_step1_include_request
    :parameters ()
    :duration (= ?duration 7257600)  ; 3 months = 12 weeks = 12*7*24*3600 = 7,257,600 seconds
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (request_included))
    )
  )

  ;; Step 2: change name on Social Security Card (requires step1 completed)
  (:durative-action do_step2_change_ssn
    :parameters ()
    :duration (= ?duration 2419200)  ; 4 weeks = 4*7*24*3600 = 2,419,200 seconds
    :condition (and (at start (step_pending step2)) (at start (request_included)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (ssn_changed))
    )
  )

  ;; Step 3: change name on driver's license (requires step1 completed)
  (:durative-action do_step3_change_dl
    :parameters ()
    :duration (= ?duration 3628800)  ; 6 weeks = 6*7*24*3600 = 3,628,800 seconds
    :condition (and (at start (step_pending step3)) (at start (request_included)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (dl_changed))
    )
  )

  ;; Step 4: change name on passport (requires step1 completed)
  (:durative-action do_step4_change_passport
    :parameters ()
    :duration (= ?duration 3628800)  ; 6 weeks = 3,628,800 seconds
    :condition (and (at start (step_pending step4)) (at start (request_included)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (passport_changed))
      (at end (name_change_completed))
    )
  )
)
