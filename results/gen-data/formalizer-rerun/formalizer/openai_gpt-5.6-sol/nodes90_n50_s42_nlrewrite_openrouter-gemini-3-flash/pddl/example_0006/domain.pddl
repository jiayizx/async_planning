(define (domain flavored-hummus)
 (:requirements :durative-actions :typing)
 (:types step)
 (:predicates
  (pending ?s - step) (done ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
  (d51) (d52) (d53) (d54) (d55) (d56) (d57) (d58) (d59) (d60)
  (d61) (d62) (d63) (d64) (d65) (d66) (d67) (d68) (d69) (d70)
  (d71) (d72) (d73) (d74) (d75) (d76) (d77) (d78) (d79) (d80)
  (d81) (d82) (d83) (d84) (d85) (d86) (d87) (d88) (d89) (d90))

 (:durative-action step1
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (pending step1)) (at start (d33)) (at start (d36)) (at start (d58)))
  :effect (and (at start (not (pending step1))) (at end (done step1)) (at end (d1))))
 (:durative-action step2
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step2)) (at start (d8)) (at start (d10)) (at start (d33)) (at start (d38)) (at start (d90)))
  :effect (and (at start (not (pending step2))) (at end (done step2)) (at end (d2))))
 (:durative-action step3
  :parameters () :duration (= ?duration 43200)
  :condition (at start (pending step3))
  :effect (and (at start (not (pending step3))) (at end (done step3)) (at end (d3))))
 (:durative-action step4
  :parameters () :duration (= ?duration 1200)
  :condition (and (at start (pending step4)) (at start (d7)) (at start (d27)))
  :effect (and (at start (not (pending step4))) (at end (done step4)) (at end (d4))))
 (:durative-action step5
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step5)) (at start (d12)) (at start (d22)) (at start (d23)) (at start (d31)) (at start (d32)) (at start (d35)) (at start (d44)) (at start (d49)) (at start (d77)) (at start (d90)))
  :effect (and (at start (not (pending step5))) (at end (done step5)) (at end (d5))))
 (:durative-action step6
  :parameters () :duration (= ?duration 180)
  :condition (at start (pending step6))
  :effect (and (at start (not (pending step6))) (at end (done step6)) (at end (d6))))
 (:durative-action step7
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step7)) (at start (d11)))
  :effect (and (at start (not (pending step7))) (at end (done step7)) (at end (d7))))
 (:durative-action step8
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step8)) (at start (d83)))
  :effect (and (at start (not (pending step8))) (at end (done step8)) (at end (d8))))
 (:durative-action step9
  :parameters () :duration (= ?duration 120)
  :condition (at start (pending step9))
  :effect (and (at start (not (pending step9))) (at end (done step9)) (at end (d9))))
 (:durative-action step10
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step10)) (at start (d11)) (at start (d39)))
  :effect (and (at start (not (pending step10))) (at end (done step10)) (at end (d10))))
 (:durative-action step11
  :parameters () :duration (= ?duration 600)
  :condition (at start (pending step11))
  :effect (and (at start (not (pending step11))) (at end (done step11)) (at end (d11))))
 (:durative-action step12
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step12)) (at start (d83)))
  :effect (and (at start (not (pending step12))) (at end (done step12)) (at end (d12))))
 (:durative-action step13
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (pending step13)) (at start (d15)) (at start (d34)) (at start (d70)))
  :effect (and (at start (not (pending step13))) (at end (done step13)) (at end (d13))))
 (:durative-action step14
  :parameters () :duration (= ?duration 5400)
  :condition (and (at start (pending step14)) (at start (d3)) (at start (d15)) (at start (d43)) (at start (d56)) (at start (d57)) (at start (d68)) (at start (d75)))
  :effect (and (at start (not (pending step14))) (at end (done step14)) (at end (d14))))
 (:durative-action step15
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step15)) (at start (d6)) (at start (d43)) (at start (d45)) (at start (d51)) (at start (d69)) (at start (d83)))
  :effect (and (at start (not (pending step15))) (at end (done step15)) (at end (d15))))
 (:durative-action step16
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step16)) (at start (d21)))
  :effect (and (at start (not (pending step16))) (at end (done step16)) (at end (d16))))
 (:durative-action step17
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step17)) (at start (d40)) (at start (d48)) (at start (d68)) (at start (d69)) (at start (d78)) (at start (d80)) (at start (d81)))
  :effect (and (at start (not (pending step17))) (at end (done step17)) (at end (d17))))
 (:durative-action step18
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (pending step18)) (at start (d6)) (at start (d34)) (at start (d57)))
  :effect (and (at start (not (pending step18))) (at end (done step18)) (at end (d18))))
 (:durative-action step19
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step19)) (at start (d33)))
  :effect (and (at start (not (pending step19))) (at end (done step19)) (at end (d19))))
 (:durative-action step20
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step20)) (at start (d83)))
  :effect (and (at start (not (pending step20))) (at end (done step20)) (at end (d20))))
 (:durative-action step21
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step21)) (at start (d3)) (at start (d23)) (at start (d24)) (at start (d75)))
  :effect (and (at start (not (pending step21))) (at end (done step21)) (at end (d21))))
 (:durative-action step22
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step22)) (at start (d10)) (at start (d33)) (at start (d65)))
  :effect (and (at start (not (pending step22))) (at end (done step22)) (at end (d22))))
 (:durative-action step23
  :parameters () :duration (= ?duration 1800)
  :condition (and (at start (pending step23)) (at start (d19)))
  :effect (and (at start (not (pending step23))) (at end (done step23)) (at end (d23))))
 (:durative-action step24
  :parameters () :duration (= ?duration 60)
  :condition (at start (pending step24))
  :effect (and (at start (not (pending step24))) (at end (done step24)) (at end (d24))))
 (:durative-action step25
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step25)) (at start (d48)))
  :effect (and (at start (not (pending step25))) (at end (done step25)) (at end (d25))))
 (:durative-action step26
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step26)) (at start (d34)))
  :effect (and (at start (not (pending step26))) (at end (done step26)) (at end (d26))))
 (:durative-action step27
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step27)) (at start (d38)) (at start (d44)) (at start (d79)))
  :effect (and (at start (not (pending step27))) (at end (done step27)) (at end (d27))))
 (:durative-action step28
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step28)) (at start (d11)) (at start (d16)) (at start (d66)) (at start (d80)))
  :effect (and (at start (not (pending step28))) (at end (done step28)) (at end (d28))))
 (:durative-action step29
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step29)) (at start (d51)) (at start (d69)) (at start (d70)) (at start (d82)))
  :effect (and (at start (not (pending step29))) (at end (done step29)) (at end (d29))))
 (:durative-action step30
  :parameters () :duration (= ?duration 120)
  :condition (at start (pending step30))
  :effect (and (at start (not (pending step30))) (at end (done step30)) (at end (d30))))
 (:durative-action step31
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step31)) (at start (d3)) (at start (d19)) (at start (d32)) (at start (d49)) (at start (d56)))
  :effect (and (at start (not (pending step31))) (at end (done step31)) (at end (d31))))
 (:durative-action step32
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (pending step32)) (at start (d57)) (at start (d65)))
  :effect (and (at start (not (pending step32))) (at end (done step32)) (at end (d32))))
 (:durative-action step33
  :parameters () :duration (= ?duration 2700)
  :condition (and (at start (pending step33)) (at start (d3)) (at start (d63)))
  :effect (and (at start (not (pending step33))) (at end (done step33)) (at end (d33))))
 (:durative-action step34
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step34)) (at start (d12)))
  :effect (and (at start (not (pending step34))) (at end (done step34)) (at end (d34))))
 (:durative-action step35
  :parameters () :duration (= ?duration 900)
  :condition (at start (pending step35))
  :effect (and (at start (not (pending step35))) (at end (done step35)) (at end (d35))))
 (:durative-action step36
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (pending step36)) (at start (d24)) (at start (d45)) (at start (d49)) (at start (d56)) (at start (d65)) (at start (d68)))
  :effect (and (at start (not (pending step36))) (at end (done step36)) (at end (d36))))
 (:durative-action step37
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step37)) (at start (d54)))
  :effect (and (at start (not (pending step37))) (at end (done step37)) (at end (d37))))
 (:durative-action step38
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step38)) (at start (d18)) (at start (d26)))
  :effect (and (at start (not (pending step38))) (at end (done step38)) (at end (d38))))
 (:durative-action step39
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step39)) (at start (d88)))
  :effect (and (at start (not (pending step39))) (at end (done step39)) (at end (d39))))
 (:durative-action step40
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step40)) (at start (d26)) (at start (d74)))
  :effect (and (at start (not (pending step40))) (at end (done step40)) (at end (d40))))
 (:durative-action step41
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step41)) (at start (d3)) (at start (d6)) (at start (d7)) (at start (d40)) (at start (d63)) (at start (d70)) (at start (d72)))
  :effect (and (at start (not (pending step41))) (at end (done step41)) (at end (d41))))
 (:durative-action step42
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step42)) (at start (d24)) (at start (d87)))
  :effect (and (at start (not (pending step42))) (at end (done step42)) (at end (d42))))
 (:durative-action step43
  :parameters () :duration (= ?duration 360)
  :condition (and (at start (pending step43)) (at start (d63)))
  :effect (and (at start (not (pending step43))) (at end (done step43)) (at end (d43))))
 (:durative-action step44
  :parameters () :duration (= ?duration 480)
  :condition (at start (pending step44))
  :effect (and (at start (not (pending step44))) (at end (done step44)) (at end (d44))))
 (:durative-action step45
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step45)) (at start (d7)) (at start (d32)) (at start (d34)) (at start (d71)))
  :effect (and (at start (not (pending step45))) (at end (done step45)) (at end (d45))))
 (:durative-action step46
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (pending step46)) (at start (d45)) (at start (d63)) (at start (d89)))
  :effect (and (at start (not (pending step46))) (at end (done step46)) (at end (d46))))
 (:durative-action step47
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step47)) (at start (d65)))
  :effect (and (at start (not (pending step47))) (at end (done step47)) (at end (d47))))
 (:durative-action step48
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step48)) (at start (d71)))
  :effect (and (at start (not (pending step48))) (at end (done step48)) (at end (d48))))
 (:durative-action step49
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step49)) (at start (d22)))
  :effect (and (at start (not (pending step49))) (at end (done step49)) (at end (d49))))
 (:durative-action step50
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step50)) (at start (d33)) (at start (d47)) (at start (d84)))
  :effect (and (at start (not (pending step50))) (at end (done step50)) (at end (d50))))
 (:durative-action step51
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step51)) (at start (d63)))
  :effect (and (at start (not (pending step51))) (at end (done step51)) (at end (d51))))
 (:durative-action step52
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step52)) (at start (d12)) (at start (d71)) (at start (d83)))
  :effect (and (at start (not (pending step52))) (at end (done step52)) (at end (d52))))
 (:durative-action step53
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step53)) (at start (d15)) (at start (d31)) (at start (d75)))
  :effect (and (at start (not (pending step53))) (at end (done step53)) (at end (d53))))
 (:durative-action step54
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step54)) (at start (d4)) (at start (d6)) (at start (d7)) (at start (d57)) (at start (d72)))
  :effect (and (at start (not (pending step54))) (at end (done step54)) (at end (d54))))
 (:durative-action step55
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (pending step55)) (at start (d4)) (at start (d27)) (at start (d43)) (at start (d84)))
  :effect (and (at start (not (pending step55))) (at end (done step55)) (at end (d55))))
 (:durative-action step56
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step56)) (at start (d3)) (at start (d58)))
  :effect (and (at start (not (pending step56))) (at end (done step56)) (at end (d56))))
 (:durative-action step57
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step57)) (at start (d11)))
  :effect (and (at start (not (pending step57))) (at end (done step57)) (at end (d57))))
 (:durative-action step58
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step58)) (at start (d9)))
  :effect (and (at start (not (pending step58))) (at end (done step58)) (at end (d58))))
 (:durative-action step59
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (pending step59)) (at start (d29)) (at start (d76)))
  :effect (and (at start (not (pending step59))) (at end (done step59)) (at end (d59))))
 (:durative-action step60
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step60)) (at start (d3)) (at start (d39)) (at start (d46)))
  :effect (and (at start (not (pending step60))) (at end (done step60)) (at end (d60))))
 (:durative-action step61
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step61)) (at start (d65)) (at start (d77)) (at start (d80)))
  :effect (and (at start (not (pending step61))) (at end (done step61)) (at end (d61))))
 (:durative-action step62
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (pending step62)) (at start (d18)) (at start (d63)) (at start (d82)))
  :effect (and (at start (not (pending step62))) (at end (done step62)) (at end (d62))))
 (:durative-action step63
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step63)) (at start (d47)) (at start (d68)))
  :effect (and (at start (not (pending step63))) (at end (done step63)) (at end (d63))))
 (:durative-action step64
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step64)) (at start (d8)) (at start (d71)) (at start (d75)))
  :effect (and (at start (not (pending step64))) (at end (done step64)) (at end (d64))))
 (:durative-action step65
  :parameters () :duration (= ?duration 900)
  :condition (at start (pending step65))
  :effect (and (at start (not (pending step65))) (at end (done step65)) (at end (d65))))
 (:durative-action step66
  :parameters () :duration (= ?duration 600)
  :condition (at start (pending step66))
  :effect (and (at start (not (pending step66))) (at end (done step66)) (at end (d66))))
 (:durative-action step67
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step67)) (at start (d5)) (at start (d13)) (at start (d17)) (at start (d43)) (at start (d49)) (at start (d90)))
  :effect (and (at start (not (pending step67))) (at end (done step67)) (at end (d67))))
 (:durative-action step68
  :parameters () :duration (= ?duration 120)
  :condition (at start (pending step68))
  :effect (and (at start (not (pending step68))) (at end (done step68)) (at end (d68))))
 (:durative-action step69
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step69)) (at start (d9)) (at start (d18)) (at start (d22)))
  :effect (and (at start (not (pending step69))) (at end (done step69)) (at end (d69))))
 (:durative-action step70
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step70)) (at start (d3)) (at start (d24)) (at start (d71)))
  :effect (and (at start (not (pending step70))) (at end (done step70)) (at end (d70))))
 (:durative-action step71
  :parameters () :duration (= ?duration 1200)
  :condition (and (at start (pending step71)) (at start (d77)))
  :effect (and (at start (not (pending step71))) (at end (done step71)) (at end (d71))))
 (:durative-action step72
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step72)) (at start (d71)))
  :effect (and (at start (not (pending step72))) (at end (done step72)) (at end (d72))))
 (:durative-action step73
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (pending step73)) (at start (d25)) (at start (d53)) (at start (d56)) (at start (d60)) (at start (d65)))
  :effect (and (at start (not (pending step73))) (at end (done step73)) (at end (d73))))
 (:durative-action step74
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step74)) (at start (d65)) (at start (d71)))
  :effect (and (at start (not (pending step74))) (at end (done step74)) (at end (d74))))
 (:durative-action step75
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step75)) (at start (d9)) (at start (d36)) (at start (d39)) (at start (d77)))
  :effect (and (at start (not (pending step75))) (at end (done step75)) (at end (d75))))
 (:durative-action step76
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step76)) (at start (d21)) (at start (d85)))
  :effect (and (at start (not (pending step76))) (at end (done step76)) (at end (d76))))
 (:durative-action step77
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step77)) (at start (d12)))
  :effect (and (at start (not (pending step77))) (at end (done step77)) (at end (d77))))
 (:durative-action step78
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step78)) (at start (d19)) (at start (d23)) (at start (d56)) (at start (d84)))
  :effect (and (at start (not (pending step78))) (at end (done step78)) (at end (d78))))
 (:durative-action step79
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step79)) (at start (d45)))
  :effect (and (at start (not (pending step79))) (at end (done step79)) (at end (d79))))
 (:durative-action step80
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step80)) (at start (d7)) (at start (d12)) (at start (d20)) (at start (d22)) (at start (d30)) (at start (d39)) (at start (d46)) (at start (d52)) (at start (d62)) (at start (d75)))
  :effect (and (at start (not (pending step80))) (at end (done step80)) (at end (d80))))
 (:durative-action step81
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step81)) (at start (d47)) (at start (d63)) (at start (d79)) (at start (d80)) (at start (d88)))
  :effect (and (at start (not (pending step81))) (at end (done step81)) (at end (d81))))
 (:durative-action step82
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (pending step82)) (at start (d9)) (at start (d32)) (at start (d74)))
  :effect (and (at start (not (pending step82))) (at end (done step82)) (at end (d82))))
 (:durative-action step83
  :parameters () :duration (= ?duration 120)
  :condition (at start (pending step83))
  :effect (and (at start (not (pending step83))) (at end (done step83)) (at end (d83))))
 (:durative-action step84
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (pending step84)) (at start (d24)) (at start (d57)) (at start (d77)) (at start (d88)))
  :effect (and (at start (not (pending step84))) (at end (done step84)) (at end (d84))))
 (:durative-action step85
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step85)) (at start (d27)) (at start (d40)) (at start (d51)) (at start (d52)) (at start (d57)) (at start (d65)) (at start (d72)))
  :effect (and (at start (not (pending step85))) (at end (done step85)) (at end (d85))))
 (:durative-action step86
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step86)) (at start (d7)) (at start (d21)) (at start (d22)) (at start (d38)) (at start (d71)) (at start (d75)))
  :effect (and (at start (not (pending step86))) (at end (done step86)) (at end (d86))))
 (:durative-action step87
  :parameters () :duration (= ?duration 480)
  :condition (and (at start (pending step87)) (at start (d35)))
  :effect (and (at start (not (pending step87))) (at end (done step87)) (at end (d87))))
 (:durative-action step88
  :parameters () :duration (= ?duration 60)
  :condition (at start (pending step88))
  :effect (and (at start (not (pending step88))) (at end (done step88)) (at end (d88))))
 (:durative-action step89
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step89)) (at start (d13)) (at start (d22)) (at start (d35)) (at start (d45)) (at start (d51)) (at start (d52)))
  :effect (and (at start (not (pending step89))) (at end (done step89)) (at end (d89))))
 (:durative-action step90
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step90)) (at start (d32)) (at start (d44)))
  :effect (and (at start (not (pending step90))) (at end (done step90)) (at end (d90))))
)