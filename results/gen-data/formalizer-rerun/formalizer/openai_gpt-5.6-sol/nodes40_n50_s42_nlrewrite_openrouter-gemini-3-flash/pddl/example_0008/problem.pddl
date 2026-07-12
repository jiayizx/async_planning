(define (problem send-letter-problem)
  (:domain send-letter)
  (:objects
    step1 - t1 step2 - t2 step3 - t3 step4 - t4 step5 - t5
    step6 - t6 step7 - t7 step8 - t8 step9 - t9 step10 - t10
    step11 - t11 step12 - t12 step13 - t13 step14 - t14 step15 - t15
    step16 - t16 step17 - t17 step18 - t18 step19 - t19 step20 - t20
    step21 - t21 step22 - t22 step23 - t23 step24 - t24 step25 - t25
    step26 - t26 step27 - t27 step28 - t28 step29 - t29 step30 - t30
    step31 - t31 step32 - t32 step33 - t33 step34 - t34 step35 - t35
    step36 - t36 step37 - t37 step38 - t38 step39 - t39 step40 - t40)
  (:init
    (step_pending step1) (step_pending step2) (step_pending step3)
    (step_pending step4) (step_pending step5) (step_pending step6)
    (step_pending step7) (step_pending step8) (step_pending step9)
    (step_pending step10) (step_pending step11) (step_pending step12)
    (step_pending step13) (step_pending step14) (step_pending step15)
    (step_pending step16) (step_pending step17) (step_pending step18)
    (step_pending step19) (step_pending step20) (step_pending step21)
    (step_pending step22) (step_pending step23) (step_pending step24)
    (step_pending step25) (step_pending step26) (step_pending step27)
    (step_pending step28) (step_pending step29) (step_pending step30)
    (step_pending step31) (step_pending step32) (step_pending step33)
    (step_pending step34) (step_pending step35) (step_pending step36)
    (step_pending step37) (step_pending step38) (step_pending step39)
    (step_pending step40))
  (:goal (and
    (step_done step1) (step_done step2) (step_done step3) (step_done step4)
    (step_done step5) (step_done step6) (step_done step7) (step_done step8)
    (step_done step9) (step_done step10) (step_done step11) (step_done step12)
    (step_done step13) (step_done step14) (step_done step15) (step_done step16)
    (step_done step17) (step_done step18) (step_done step19) (step_done step20)
    (step_done step21) (step_done step22) (step_done step23) (step_done step24)
    (step_done step25) (step_done step26) (step_done step27) (step_done step28)
    (step_done step29) (step_done step30) (step_done step31) (step_done step32)
    (step_done step33) (step_done step34) (step_done step35) (step_done step36)
    (step_done step37) (step_done step38) (step_done step39) (step_done step40)
    (c1) (c2) (c3) (c4) (c5) (c6) (c7) (c8) (c9) (c10)
    (c11) (c12) (c13) (c14) (c15) (c16) (c17) (c18) (c19) (c20)
    (c21) (c22) (c23) (c24) (c25) (c26) (c27) (c28) (c29) (c30)
    (c31) (c32) (c33) (c34) (c35) (c36) (c37) (c38) (c39) (c40)))
)