(define (domain pico_de_gallo)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending_step1)
    (pending_step2)
    (pending_step3)
    (pending_step4)
    (pending_step5)
    (pending_step6)
    (pending_step7)
    (pending_step8)
    (pending_step9)
    (pending_step10)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
    (step6_done)
    (step7_done)
    (step8_done)
    (step9_done)
    (step10_done)
  )
  (:durative-action do_step1
    :duration 480
    :condition (and (at start (pending_step1)) (at start (step2_done)))
    :effect (and (at start (not (pending_step1))) (at end (step1_done)))
  )
  (:durative-action do_step2
    :duration 120
    :condition (at start (pending_step2))
    :effect (and (at start (not (pending_step2))) (at end (step2_done)))
  )
  (:durative-action do_step3
    :duration 300
    :condition (and (at start (pending_step3)) (at start (step1_done)) (at start (step2_done)))
    :effect (and (at start (not (pending_step3))) (at end (step3_done)))
  )
  (:durative-action do_step4
    :duration 1800
    :condition (and (at start (pending_step4)) (at start (step1_done)) (at start (step2_done)) (at start (step3_done)) (at start (step5_done)) (at start (step6_done)) (at start (step7_done)) (at start (step8_done)) (at start (step9_done)) (at start (step10_done)))
    :effect (and (at start (not (pending_step4))) (at end (step4_done)))
  )
  (:durative-action do_step5
    :duration 60
    :condition (and (at start (pending_step5)) (at start (step2_done)))
    :effect (and (at start (not (pending_step5))) (at end (step5_done)))
  )
  (:durative-action do_step6
    :duration 30
    :condition (and (at start (pending_step6)) (at start (step1_done)) (at start (step2_done)) (at start (step3_done)) (at start (step5_done)) (at start (step7_done)) (at start (step8_done)) (at start (step9_done)) (at start (step10_done)))
    :effect (and (at start (not (pending_step6))) (at end (step6_done)))
  )
  (:durative-action do_step7
    :duration 240
    :condition (and (at start (pending_step7)) (at start (step1_done)) (at start (step2_done)) (at start (step3_done)) (at start (step10_done)))
    :effect (and (at start (not (pending_step7))) (at end (step7_done)))
  )
  (:durative-action do_step8
    :duration 180
    :condition (and (at start (pending_step8)) (at start (step1_done)) (at start (step2_done)) (at start (step3_done)) (at start (step7_done)) (at start (step10_done)))
    :effect (and (at start (not (pending_step8))) (at end (step8_done)))
  )
  (:durative-action do_step9
    :duration 120
    :condition (and (at start (pending_step9)) (at start (step1_done)) (at start (step2_done)) (at start (step3_done)) (at start (step5_done)) (at start (step7_done)) (at start (step8_done)) (at start (step10_done)))
    :effect (and (at start (not (pending_step9))) (at end (step9_done)))
  )
  (:durative-action do_step10
    :duration 60
    :condition (and (at start (pending_step10)) (at start (step1_done)) (at start (step2_done)) (at start (step3_done)))
    :effect (and (at start (not (pending_step10))) (at end (step10_done)))
  )
)