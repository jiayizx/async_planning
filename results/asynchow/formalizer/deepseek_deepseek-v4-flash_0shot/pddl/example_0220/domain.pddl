(define (domain pie_filling)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (crust_laid) (filling_thawed) (filling_unwrapped) (top_crust_added) (pie_baked)
  )
  (:durative-action do_layer_crust
    :duration (= ?duration 10)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)) (at end (crust_laid)))
  )
  (:durative-action do_thaw_filling
    :duration (= ?duration 30)
    :condition (and (at start (step2_pending)) (at start (crust_laid)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)) (at end (filling_thawed)))
  )
  (:durative-action do_unwrap_filling
    :duration (= ?duration 10)
    :condition (and (at start (step3_pending)) (at start (crust_laid)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)) (at end (filling_unwrapped)))
  )
  (:durative-action do_add_top_crust
    :duration (= ?duration 5)
    :condition (and (at start (step4_pending)) (at start (filling_thawed)) (at start (filling_unwrapped)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)) (at end (top_crust_added)))
  )
  (:durative-action do_bake
    :duration (= ?duration 60)
    :condition (and (at start (step5_pending)) (at start (top_crust_added)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)) (at end (pie_baked)))
  )
)
