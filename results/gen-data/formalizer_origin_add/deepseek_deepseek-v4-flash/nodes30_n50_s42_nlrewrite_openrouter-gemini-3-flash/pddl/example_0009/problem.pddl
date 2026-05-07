(define (problem seafood_salad_prob)
  (:domain seafood_salad)
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
  (:goal (and
    (completed step1) (completed step2) (completed step3) (completed step4) (completed step5)
    (completed step6) (completed step7) (completed step8) (completed step9) (completed step10)
    (completed step11) (completed step12) (completed step13) (completed step14) (completed step15)
    (completed step16) (completed step17) (completed step18) (completed step19) (completed step20)
    (completed step21) (completed step22) (completed step23) (completed step24) (completed step25)
    (completed step26) (completed step27) (completed step28) (completed step29) (completed step30)
  ))
)