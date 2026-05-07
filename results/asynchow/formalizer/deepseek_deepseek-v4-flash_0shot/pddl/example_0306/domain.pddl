(define (domain chevron_bracelet)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending)
    (step6_pending) (step7_pending) (step8_pending) (step9_pending)
    (done_s1) (done_s2) (done_s3) (done_s4) (done_s5) (done_s6) (done_s7) (done_s8) (done_s9)
  )
  
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (done_s1)))
  )
  
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step2_pending)) (at start (done_s3)))
    :effect (and (at start (not (step2_pending))) (at end (done_s2)))
  )
  
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step3_pending)) (at start (done_s1)))
    :effect (and (at start (not (step3_pending))) (at end (done_s3)))
  )
  
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step4_pending)) (at start (done_s2)))
    :effect (and (at start (not (step4_pending))) (at end (done_s4)))
  )
  
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step5_pending)) (at start (done_s2)))
    :effect (and (at start (not (step5_pending))) (at end (done_s5)))
  )
  
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step6_pending)) (at start (done_s7)))
    :effect (and (at start (not (step6_pending))) (at end (done_s6)))
  )
  
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step7_pending)) (at start (done_s4)) (at start (done_s5)))
    :effect (and (at start (not (step7_pending))) (at end (done_s7)))
  )
  
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step8_pending)) (at start (done_s6)))
    :effect (and (at start (not (step8_pending))) (at end (done_s8)))
  )
  
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step9_pending)) (at start (done_s8)))
    :effect (and (at start (not (step9_pending))) (at end (done_s9)))
  )
)