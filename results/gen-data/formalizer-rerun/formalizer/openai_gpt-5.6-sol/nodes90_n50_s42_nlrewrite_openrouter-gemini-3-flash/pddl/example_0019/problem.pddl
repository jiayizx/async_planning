(define (problem drink-sippy-cup)
  (:domain sippy-cup)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
    step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
    step51 step52 step53 step54 step55 step56 step57 step58 step59 step60
    step61 step62 step63 step64 step65 step66 step67 step68 step69 step70
    step71 step72 step73 step74 step75 step76 step77 step78 step79 step80
    step81 step82 step83 step84 step85 step86 step87 step88 step89 step90 - step)
  (:init
    (pending1 step1) (pending2 step2) (pending3 step3) (pending4 step4) (pending5 step5)
    (pending6 step6) (pending7 step7) (pending8 step8) (pending9 step9) (pending10 step10)
    (pending11 step11) (pending12 step12) (pending13 step13) (pending14 step14) (pending15 step15)
    (pending16 step16) (pending17 step17) (pending18 step18) (pending19 step19) (pending20 step20)
    (pending21 step21) (pending22 step22) (pending23 step23) (pending24 step24) (pending25 step25)
    (pending26 step26) (pending27 step27) (pending28 step28) (pending29 step29) (pending30 step30)
    (pending31 step31) (pending32 step32) (pending33 step33) (pending34 step34) (pending35 step35)
    (pending36 step36) (pending37 step37) (pending38 step38) (pending39 step39) (pending40 step40)
    (pending41 step41) (pending42 step42) (pending43 step43) (pending44 step44) (pending45 step45)
    (pending46 step46) (pending47 step47) (pending48 step48) (pending49 step49) (pending50 step50)
    (pending51 step51) (pending52 step52) (pending53 step53) (pending54 step54) (pending55 step55)
    (pending56 step56) (pending57 step57) (pending58 step58) (pending59 step59) (pending60 step60)
    (pending61 step61) (pending62 step62) (pending63 step63) (pending64 step64) (pending65 step65)
    (pending66 step66) (pending67 step67) (pending68 step68) (pending69 step69) (pending70 step70)
    (pending71 step71) (pending72 step72) (pending73 step73) (pending74 step74) (pending75 step75)
    (pending76 step76) (pending77 step77) (pending78 step78) (pending79 step79) (pending80 step80)
    (pending81 step81) (pending82 step82) (pending83 step83) (pending84 step84) (pending85 step85)
    (pending86 step86) (pending87 step87) (pending88 step88) (pending89 step89) (pending90 step90))
  (:goal (and
    (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5)
    (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
    (step_done step11) (step_done step12) (step_done step13) (step_done step14) (step_done step15)
    (step_done step16) (step_done step17) (step_done step18) (step_done step19) (step_done step20)
    (step_done step21) (step_done step22) (step_done step23) (step_done step24) (step_done step25)
    (step_done step26) (step_done step27) (step_done step28) (step_done step29) (step_done step30)
    (step_done step31) (step_done step32) (step_done step33) (step_done step34) (step_done step35)
    (step_done step36) (step_done step37) (step_done step38) (step_done step39) (step_done step40)
    (step_done step41) (step_done step42) (step_done step43) (step_done step44) (step_done step45)
    (step_done step46) (step_done step47) (step_done step48) (step_done step49) (step_done step50)
    (step_done step51) (step_done step52) (step_done step53) (step_done step54) (step_done step55)
    (step_done step56) (step_done step57) (step_done step58) (step_done step59) (step_done step60)
    (step_done step61) (step_done step62) (step_done step63) (step_done step64) (step_done step65)
    (step_done step66) (step_done step67) (step_done step68) (step_done step69) (step_done step70)
    (step_done step71) (step_done step72) (step_done step73) (step_done step74) (step_done step75)
    (step_done step76) (step_done step77) (step_done step78) (step_done step79) (step_done step80)
    (step_done step81) (step_done step82) (step_done step83) (step_done step84) (step_done step85)
    (step_done step86) (step_done step87) (step_done step88) (step_done step89) (step_done step90)
    (done90)))
  (:metric minimize (total-time))
)