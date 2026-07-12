(define (problem collect-bacteria-samples)
  (:domain bacteria-sample-collection)
  (:objects
    step1 - sterilize-step
    step2 - ppe-step
    step3 - label-step
    step4 - pack-cooler-step
    step5 - swab-step
    step6 - seal-step
    step7 - calibrate-step
    step8 - record-temperature-step
    step9 - log-metadata-step
    step10 - storage-step
    step11 - print-manifest-step
    step12 - order-plates-step
    step13 - prepare-broth-step
    step14 - review-safety-step
    step15 - inspect-plates-step
    step16 - inoculate-step
    step17 - verify-gps-step
    step18 - incubate-controls-step
    step19 - transport-step
    step20 - permission-step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
    (step_pending step8)
    (step_pending step9)
    (step_pending step10)
    (step_pending step11)
    (step_pending step12)
    (step_pending step13)
    (step_pending step14)
    (step_pending step15)
    (step_pending step16)
    (step_pending step17)
    (step_pending step18)
    (step_pending step19)
    (step_pending step20)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)
    (step_done step8)
    (step_done step9)
    (step_done step10)
    (step_done step11)
    (step_done step12)
    (step_done step13)
    (step_done step14)
    (step_done step15)
    (step_done step16)
    (step_done step17)
    (step_done step18)
    (step_done step19)
    (step_done step20)
    (samples_stored)
  ))
  (:metric minimize (total-time))
)