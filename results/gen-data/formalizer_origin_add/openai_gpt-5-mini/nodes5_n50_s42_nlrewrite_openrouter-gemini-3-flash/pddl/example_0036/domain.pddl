(define (domain manx_care)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (purchase_done)
    (contact_done)
    (consult_done)
    (groom_done)
  )

  (:durative-action do_step1_research
     :parameters ()
     :duration (= ?duration 7200)
     :condition (at start (step_pending step1))
     :effect (and
               (at start (not (step_pending step1)))
               (at end (step_done step1))
               (at end (research_done))
             )
  )

  (:durative-action do_step2_purchase
     :parameters ()
     :duration (= ?duration 2700)
     :condition (and (at start (step_pending step2)) (at start (research_done)))
     :effect (and
               (at start (not (step_pending step2)))
               (at end (step_done step2))
               (at end (purchase_done))
             )
  )

  (:durative-action do_step3_contact_vet
     :parameters ()
     :duration (= ?duration 900)
     :condition (at start (step_pending step3))
     :effect (and
               (at start (not (step_pending step3)))
               (at end (step_done step3))
               (at end (contact_done))
             )
  )

  (:durative-action do_step5_consultation
     :parameters ()
     :duration (= ?duration 259200)
     :condition (and (at start (step_pending step5)) (at start (contact_done)))
     :effect (and
               (at start (not (step_pending step5)))
               (at end (step_done step5))
               (at end (consult_done))
             )
  )

  (:durative-action do_step4_groom_and_check
     :parameters ()
     :duration (= ?duration 1800)
     :condition (and (at start (step_pending step4)) (at start (research_done)) (at start (purchase_done)) (at start (contact_done)) (at start (consult_done)))
     :effect (and
               (at start (not (step_pending step4)))
               (at end (step_done step4))
               (at end (groom_done))
             )
  )
)
