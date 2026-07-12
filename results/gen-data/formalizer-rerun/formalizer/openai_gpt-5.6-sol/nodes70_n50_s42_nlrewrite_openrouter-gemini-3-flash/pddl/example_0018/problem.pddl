(define (problem plant-tomato)
(:domain tomato-planting)
(:objects
step1 - t1 step2 - t2 step3 - t3 step4 - t4 step5 - t5 step6 - t6 step7 - t7 step8 - t8 step9 - t9 step10 - t10
step11 - t11 step12 - t12 step13 - t13 step14 - t14 step15 - t15 step16 - t16 step17 - t17 step18 - t18 step19 - t19 step20 - t20
step21 - t21 step22 - t22 step23 - t23 step24 - t24 step25 - t25 step26 - t26 step27 - t27 step28 - t28 step29 - t29 step30 - t30
step31 - t31 step32 - t32 step33 - t33 step34 - t34 step35 - t35 step36 - t36 step37 - t37 step38 - t38 step39 - t39 step40 - t40
step41 - t41 step42 - t42 step43 - t43 step44 - t44 step45 - t45 step46 - t46 step47 - t47 step48 - t48 step49 - t49 step50 - t50
step51 - t51 step52 - t52 step53 - t53 step54 - t54 step55 - t55 step56 - t56 step57 - t57 step58 - t58 step59 - t59 step60 - t60
step61 - t61 step62 - t62 step63 - t63 step64 - t64 step65 - t65 step66 - t66 step67 - t67 step68 - t68 step69 - t69 step70 - t70)
(:init
(pending step1) (pending step2) (pending step3) (pending step4) (pending step5) (pending step6) (pending step7) (pending step8) (pending step9) (pending step10)
(pending step11) (pending step12) (pending step13) (pending step14) (pending step15) (pending step16) (pending step17) (pending step18) (pending step19) (pending step20)
(pending step21) (pending step22) (pending step23) (pending step24) (pending step25) (pending step26) (pending step27) (pending step28) (pending step29) (pending step30)
(pending step31) (pending step32) (pending step33) (pending step34) (pending step35) (pending step36) (pending step37) (pending step38) (pending step39) (pending step40)
(pending step41) (pending step42) (pending step43) (pending step44) (pending step45) (pending step46) (pending step47) (pending step48) (pending step49) (pending step50)
(pending step51) (pending step52) (pending step53) (pending step54) (pending step55) (pending step56) (pending step57) (pending step58) (pending step59) (pending step60)
(pending step61) (pending step62) (pending step63) (pending step64) (pending step65) (pending step66) (pending step67) (pending step68) (pending step69) (pending step70))
(:goal (and
(done step1) (done step2) (done step3) (done step4) (done step5) (done step6) (done step7) (done step8) (done step9) (done step10)
(done step11) (done step12) (done step13) (done step14) (done step15) (done step16) (done step17) (done step18) (done step19) (done step20)
(done step21) (done step22) (done step23) (done step24) (done step25) (done step26) (done step27) (done step28) (done step29) (done step30)
(done step31) (done step32) (done step33) (done step34) (done step35) (done step36) (done step37) (done step38) (done step39) (done step40)
(done step41) (done step42) (done step43) (done step44) (done step45) (done step46) (done step47) (done step48) (done step49) (done step50)
(done step51) (done step52) (done step53) (done step54) (done step55) (done step56) (done step57) (done step58) (done step59) (done step60)
(done step61) (done step62) (done step63) (done step64) (done step65) (done step66) (done step67) (done step68) (done step69) (done step70) (d70)))
(:metric minimize (total-time))
)