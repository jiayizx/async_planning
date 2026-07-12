(define (problem walk-living-room-problem)
 (:domain walk-living-room)
 (:objects
  step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
  step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
  step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
  step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
  step41 step42 step43 step44 step45 step46 step47 step48 step49 step50 - step)
 (:init
  (pending1) (pending2) (pending3) (pending4) (pending5) (pending6) (pending7) (pending8) (pending9) (pending10)
  (pending11) (pending12) (pending13) (pending14) (pending15) (pending16) (pending17) (pending18) (pending19) (pending20)
  (pending21) (pending22) (pending23) (pending24) (pending25) (pending26) (pending27) (pending28) (pending29) (pending30)
  (pending31) (pending32) (pending33) (pending34) (pending35) (pending36) (pending37) (pending38) (pending39) (pending40)
  (pending41) (pending42) (pending43) (pending44) (pending45) (pending46) (pending47) (pending48) (pending49) (pending50))
 (:goal (and
  (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
  (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
  (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
  (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
  (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
  (main_living_area_entered)))
 (:metric minimize (total-time))
)