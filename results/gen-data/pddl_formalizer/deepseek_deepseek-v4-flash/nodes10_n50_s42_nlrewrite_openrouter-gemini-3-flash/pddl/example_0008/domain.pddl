(define (domain roast-turnips)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
    (purchased) (scrubbed) (peeled) (sliced) (tossed) (preheated) (roasted) (cooled) (garnished) (served)
  )
  
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step1_pending)) (at start (cooled)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)) (at end (garnished)))
  )
  
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step2_pending)) (at start (purchased)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)) (at end (peeled)))
  )
  
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step3_pending)) (at start (roasted)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)) (at end (served)))
  )
  
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step4_pending)) (at start (scrubbed)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)) (at end (tossed)))
  )
  
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)) (at end (scrubbed)))
  )
  
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step6_pending)) (at start (peeled)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)) (at end (sliced)))
  )
  
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 2100)
    :condition (and (at start (step7_pending)) (at start (preheated)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)) (at end (roasted)))
  )
  
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step8_pending))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)) (at end (cooled)))
  )
  
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step9_pending))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)) (at end (purchased)))
  )
  
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step10_pending)) (at start (tossed)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)) (at end (preheated)))
  )
)