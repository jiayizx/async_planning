(define (problem try-black-coffee)
 (:domain black-coffee)
 (:objects
  step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
  step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
  step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
  step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
  step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
  step51 step52 step53 step54 step55 step56 step57 step58 step59 step60
  step61 step62 step63 step64 step65 step66 step67 step68 step69 step70
  step71 step72 step73 step74 step75 step76 step77 step78 step79 step80 - step)
 (:init
  (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4) (step_pending step5) (step_pending step6) (step_pending step7) (step_pending step8) (step_pending step9) (step_pending step10)
  (step_pending step11) (step_pending step12) (step_pending step13) (step_pending step14) (step_pending step15) (step_pending step16) (step_pending step17) (step_pending step18) (step_pending step19) (step_pending step20)
  (step_pending step21) (step_pending step22) (step_pending step23) (step_pending step24) (step_pending step25) (step_pending step26) (step_pending step27) (step_pending step28) (step_pending step29) (step_pending step30)
  (step_pending step31) (step_pending step32) (step_pending step33) (step_pending step34) (step_pending step35) (step_pending step36) (step_pending step37) (step_pending step38) (step_pending step39) (step_pending step40)
  (step_pending step41) (step_pending step42) (step_pending step43) (step_pending step44) (step_pending step45) (step_pending step46) (step_pending step47) (step_pending step48) (step_pending step49) (step_pending step50)
  (step_pending step51) (step_pending step52) (step_pending step53) (step_pending step54) (step_pending step55) (step_pending step56) (step_pending step57) (step_pending step58) (step_pending step59) (step_pending step60)
  (step_pending step61) (step_pending step62) (step_pending step63) (step_pending step64) (step_pending step65) (step_pending step66) (step_pending step67) (step_pending step68) (step_pending step69) (step_pending step70)
  (step_pending step71) (step_pending step72) (step_pending step73) (step_pending step74) (step_pending step75) (step_pending step76) (step_pending step77) (step_pending step78) (step_pending step79) (step_pending step80)
  (id1 step1) (id2 step2) (id3 step3) (id4 step4) (id5 step5) (id6 step6) (id7 step7) (id8 step8) (id9 step9) (id10 step10)
  (id11 step11) (id12 step12) (id13 step13) (id14 step14) (id15 step15) (id16 step16) (id17 step17) (id18 step18) (id19 step19) (id20 step20)
  (id21 step21) (id22 step22) (id23 step23) (id24 step24) (id25 step25) (id26 step26) (id27 step27) (id28 step28) (id29 step29) (id30 step30)
  (id31 step31) (id32 step32) (id33 step33) (id34 step34) (id35 step35) (id36 step36) (id37 step37) (id38 step38) (id39 step39) (id40 step40)
  (id41 step41) (id42 step42) (id43 step43) (id44 step44) (id45 step45) (id46 step46) (id47 step47) (id48 step48) (id49 step49) (id50 step50)
  (id51 step51) (id52 step52) (id53 step53) (id54 step54) (id55 step55) (id56 step56) (id57 step57) (id58 step58) (id59 step59) (id60 step60)
  (id61 step61) (id62 step62) (id63 step63) (id64 step64) (id65 step65) (id66 step66) (id67 step67) (id68 step68) (id69 step69) (id70 step70)
  (id71 step71) (id72 step72) (id73 step73) (id74 step74) (id75 step75) (id76 step76) (id77 step77) (id78 step78) (id79 step79) (id80 step80)
 )
 (:goal (and
  (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5) (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
  (step_done step11) (step_done step12) (step_done step13) (step_done step14) (step_done step15) (step_done step16) (step_done step17) (step_done step18) (step_done step19) (step_done step20)
  (step_done step21) (step_done step22) (step_done step23) (step_done step24) (step_done step25) (step_done step26) (step_done step27) (step_done step28) (step_done step29) (step_done step30)
  (step_done step31) (step_done step32) (step_done step33) (step_done step34) (step_done step35) (step_done step36) (step_done step37) (step_done step38) (step_done step39) (step_done step40)
  (step_done step41) (step_done step42) (step_done step43) (step_done step44) (step_done step45) (step_done step46) (step_done step47) (step_done step48) (step_done step49) (step_done step50)
  (step_done step51) (step_done step52) (step_done step53) (step_done step54) (step_done step55) (step_done step56) (step_done step57) (step_done step58) (step_done step59) (step_done step60)
  (step_done step61) (step_done step62) (step_done step63) (step_done step64) (step_done step65) (step_done step66) (step_done step67) (step_done step68) (step_done step69) (step_done step70)
  (step_done step71) (step_done step72) (step_done step73) (step_done step74) (step_done step75) (step_done step76) (step_done step77) (step_done step78) (step_done step79) (step_done step80)
  (p22)
 ))
 (:metric minimize (total-time))
)