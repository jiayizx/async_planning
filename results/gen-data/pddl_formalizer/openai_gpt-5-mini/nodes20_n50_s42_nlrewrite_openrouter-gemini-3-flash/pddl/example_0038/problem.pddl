(define (problem marathon-problem) (:domain marathon)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20 - step
  )

  (:init
    ; all steps are initially pending
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

  ; Ordering constraints encoded as start conditions on successors (direct precedence list):
  ; Step 1 must precede Step 8.  -> step8 requires s1_done
  ; Step 2 must precede Step 13. -> step13 requires s2_done
  ; Step 3 must precede Step 2.  -> step2 requires s3_done
  ; Step 4 must precede Step 7.  -> step7 requires s4_done
  ; Step 5 must precede Step 19. -> step19 requires s5_done
  ; Step 6 must precede Step 15. -> step15 requires s6_done
  ; Step 6 must precede Step 18. -> step18 requires s6_done
  ; Step 7 must precede Step 16. -> step16 requires s7_done
  ; Step 9 must precede Step 1.  -> step1 requires s9_done
  ; Step 9 must precede Step 7.  -> step7 requires s9_done
  ; Step 12 must precede Step 11.-> step11 requires s12_done
  ; Step 12 must precede Step 17.-> step17 requires s12_done
  ; Step 13 must precede Step 8. -> step8 requires s13_done
  ; Step 14 must precede Step 18.-> step18 requires s14_done
  ; Step 15 must precede Step 10.-> step10 requires s15_done
  ; Step 16 must precede Step 5. -> step5 requires s16_done
  ; Step 17 must precede Step 20.-> step20 requires s17_done
  ; Step 19 must precede Step 3. -> step3 requires s19_done
  ; Step 20 must precede Step 9. -> step9 requires s20_done

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
    (participated)
  ))
)
