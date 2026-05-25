(define (problem tie-dye-nails-problem)
  (:domain tie-dye-nails)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30 - step
  )
  (:init
    (pending step1) (pending step2) (pending step3) (pending step4) (pending step5)
    (pending step6) (pending step7) (pending step8) (pending step9) (pending step10)
    (pending step11) (pending step12) (pending step13) (pending step14) (pending step15)
    (pending step16) (pending step17) (pending step18) (pending step19) (pending step20)
    (pending step21) (pending step22) (pending step23) (pending step24) (pending step25)
    (pending step26) (pending step27) (pending step28) (pending step29) (pending step30)
  )
  (:goal (and (done step1) (done step2) (done step3) (done step4) (done step5)
              (done step6) (done step7) (done step8) (done step9) (done step10)
              (done step11) (done step12) (done step13) (done step14) (done step15)
              (done step16) (done step17) (done step18) (done step19) (done step20)
              (done step21) (done step22) (done step23) (done step24) (done step25)
              (done step26) (done step27) (done step28) (done step29) (done step30)
              (nails_done))
  )
)