(define (problem family-dinner-problem)
  (:domain family-dinner)
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
    (pending step1) (pending step2) (pending step3) (pending step4) (pending step5)
    (pending step6) (pending step7) (pending step8) (pending step9) (pending step10)
    (pending step11) (pending step12) (pending step13) (pending step14) (pending step15)
    (pending step16) (pending step17) (pending step18) (pending step19) (pending step20)
    (pending step21) (pending step22) (pending step23) (pending step24) (pending step25)
    (pending step26) (pending step27) (pending step28) (pending step29) (pending step30)
    (pending step31) (pending step32) (pending step33) (pending step34) (pending step35)
    (pending step36) (pending step37) (pending step38) (pending step39) (pending step40))
  (:goal (and
    (step-done step1) (step-done step2) (step-done step3) (step-done step4) (step-done step5)
    (step-done step6) (step-done step7) (step-done step8) (step-done step9) (step-done step10)
    (step-done step11) (step-done step12) (step-done step13) (step-done step14) (step-done step15)
    (step-done step16) (step-done step17) (step-done step18) (step-done step19) (step-done step20)
    (step-done step21) (step-done step22) (step-done step23) (step-done step24) (step-done step25)
    (step-done step26) (step-done step27) (step-done step28) (step-done step29) (step-done step30)
    (step-done step31) (step-done step32) (step-done step33) (step-done step34) (step-done step35)
    (step-done step36) (step-done step37) (step-done step38) (step-done step39) (step-done step40)
    (dinner-ready)))
  (:metric minimize (total-time))
)