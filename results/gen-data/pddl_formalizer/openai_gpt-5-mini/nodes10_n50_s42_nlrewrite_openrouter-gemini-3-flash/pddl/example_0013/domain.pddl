(define (domain marching-band)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
  )

  ;; Step 1: Attend the mandatory orientation meeting (3600s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step1)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done))
    )
  )

  ;; Step 2: Rent a high-quality instrument (2700s)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done))
    )
  )

  ;; Step 3: Submit medical clearance (259200s)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step3)) (at start (s1_done)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done))
    )
  )

  ;; Step 4: Attend week-long intensive summer band camp (604800s)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step4)) (at start (s2_done)) (at start (s6_done)) (at start (s3_done)) (at start (s8_done)) (at start (s1_done)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done))
    )
  )

  ;; Step 5: Perform in the first halftime show (1200s)
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step5)) (at start (s7_done)) (at start (s4_done)) (at start (s6_done)) (at start (s8_done)) (at start (s2_done)) (at start (s3_done)) (at start (s1_done)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done))
    )
  )

  ;; Step 6: Take private lessons (1209600s)
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step6)) (at start (s2_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_done))
    )
  )

  ;; Step 7: Practice complex field movements (345600s)
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step7)) (at start (s4_done)) (at start (s6_done)) (at start (s8_done)) (at start (s2_done)) (at start (s3_done)) (at start (s1_done)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_done))
    )
  )

  ;; Step 8: Pass basic musical proficiency audition (1800s)
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step8)) (at start (s3_done)) (at start (s1_done)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_done))
    )
  )

  ;; Step 9: Order custom-fitted uniform (2592000s)
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step9)) (at start (s1_done)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_done))
    )
  )

  ;; Step 10: Fill out initial interest and registration form (900s)
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step10))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_done))
    )
  )
)
