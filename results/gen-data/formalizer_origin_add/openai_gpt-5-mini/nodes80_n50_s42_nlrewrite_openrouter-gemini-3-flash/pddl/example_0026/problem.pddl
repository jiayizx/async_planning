(define (problem toad_pet_prob)
  (:domain toad_pet)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
    step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
    step51 step52 step53 step54 step55 step56 step57 step58 step59 step60
    step61 step62 step63 step64 step65 step66 step67 step68 step69 step70
    step71 step72 step73 step74 step75 step76 step77 step78 step79 step80 - step
  )

  (:init
    ;; initialize all pending predicates true
    (pending1) (pending2) (pending3) (pending4) (pending5) (pending6) (pending7) (pending8) (pending9) (pending10)
    (pending11) (pending12) (pending13) (pending14) (pending15) (pending16) (pending17) (pending18) (pending19) (pending20)
    (pending21) (pending22) (pending23) (pending24) (pending25) (pending26) (pending27) (pending28) (pending29) (pending30)
    (pending31) (pending32) (pending33) (pending34) (pending35) (pending36) (pending37) (pending38) (pending39) (pending40)
    (pending41) (pending42) (pending43) (pending44) (pending45) (pending46) (pending47) (pending48) (pending49) (pending50)
    (pending51) (pending52) (pending53) (pending54) (pending55) (pending56) (pending57) (pending58) (pending59) (pending60)
    (pending61) (pending62) (pending63) (pending64) (pending65) (pending66) (pending67) (pending68) (pending69) (pending70)
    (pending71) (pending72) (pending73) (pending74) (pending75) (pending76) (pending77) (pending78) (pending79) (pending80)
  )

  (:goal (and
    ;; require every step done
    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
    (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
    (done51) (done52) (done53) (done54) (done55) (done56) (done57) (done58) (done59) (done60)
    (done61) (done62) (done63) (done64) (done65) (done66) (done67) (done68) (done69) (done70)
    (done71) (done72) (done73) (done74) (done75) (done76) (done77) (done78) (done79) (done80)
    ;; final semantic predicate (from last step) to force causal chain completion
    (done80)
  ))
)
