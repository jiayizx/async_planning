(define (problem make-tie-dye-nails)
  (:domain tie-dye-nails)
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
    step20 - step20-type
    step21 - step21-type
    step22 - step22-type
    step23 - step23-type
    step24 - step24-type
    step25 - step25-type
    step26 - step26-type
    step27 - step27-type
    step28 - step28-type
    step29 - step29-type
    step30 - step30-type
  )
  (:init
    (step-pending step1)
    (step-pending step2)
    (step-pending step3)
    (step-pending step4)
    (step-pending step5)
    (step-pending step6)
    (step-pending step7)
    (step-pending step8)
    (step-pending step9)
    (step-pending step10)
    (step-pending step11)
    (step-pending step12)
    (step-pending step13)
    (step-pending step14)
    (step-pending step15)
    (step-pending step16)
    (step-pending step17)
    (step-pending step18)
    (step-pending step19)
    (step-pending step20)
    (step-pending step21)
    (step-pending step22)
    (step-pending step23)
    (step-pending step24)
    (step-pending step25)
    (step-pending step26)
    (step-pending step27)
    (step-pending step28)
    (step-pending step29)
    (step-pending step30)
  )
  (:goal
    (and
      (step-done step1)
      (step-done step2)
      (step-done step3)
      (step-done step4)
      (step-done step5)
      (step-done step6)
      (step-done step7)
      (step-done step8)
      (step-done step9)
      (step-done step10)
      (step-done step11)
      (step-done step12)
      (step-done step13)
      (step-done step14)
      (step-done step15)
      (step-done step16)
      (step-done step17)
      (step-done step18)
      (step-done step19)
      (step-done step20)
      (step-done step21)
      (step-done step22)
      (step-done step23)
      (step-done step24)
      (step-done step25)
      (step-done step26)
      (step-done step27)
      (step-done step28)
      (step-done step29)
      (step-done step30)
      (s30-design-air-dried)
    )
  )
  (:metric minimize (total-time))
)