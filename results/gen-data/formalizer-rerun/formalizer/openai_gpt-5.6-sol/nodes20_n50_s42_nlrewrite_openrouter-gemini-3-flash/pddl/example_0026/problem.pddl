(define (problem care-for-boxers)
  (:domain boxer-care)
  (:objects
    step1 - step1-type
    step2 - step2-type
    step3 - step3-type
    step4 - step4-type
    step5 - step5-type
    step6 - step6-type
    step7 - step7-type
    step8 - step8-type
    step9 - step9-type
    step10 - step10-type
    step11 - step11-type
    step12 - step12-type
    step13 - step13-type
    step14 - step14-type
    step15 - step15-type
    step16 - step16-type
    step17 - step17-type
    step18 - step18-type
    step19 - step19-type
    step20 - step20-type)

  (:init
    (step-pending step1) (step-pending step2)
    (step-pending step3) (step-pending step4)
    (step-pending step5) (step-pending step6)
    (step-pending step7) (step-pending step8)
    (step-pending step9) (step-pending step10)
    (step-pending step11) (step-pending step12)
    (step-pending step13) (step-pending step14)
    (step-pending step15) (step-pending step16)
    (step-pending step17) (step-pending step18)
    (step-pending step19) (step-pending step20))

  (:goal (and
    (step-done step1) (step-done step2)
    (step-done step3) (step-done step4)
    (step-done step5) (step-done step6)
    (step-done step7) (step-done step8)
    (step-done step9) (step-done step10)
    (step-done step11) (step-done step12)
    (step-done step13) (step-done step14)
    (step-done step15) (step-done step16)
    (step-done step17) (step-done step18)
    (step-done step19) (step-done step20)
    (s1-complete) (s2-complete) (s3-complete) (s4-complete)
    (s5-complete) (s6-complete) (s7-complete) (s8-complete)
    (s9-complete) (s10-complete) (s11-complete) (s12-complete)
    (s13-complete) (s14-complete) (s15-complete) (s16-complete)
    (s17-complete) (s18-complete) (s19-complete) (s20-complete)))
)