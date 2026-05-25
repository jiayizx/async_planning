(define (domain boot_cleaning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending ?s - step)
    (done ?s - step)
  )

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done step11)) (at start (done step38)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (done step21)) (at start (done step24)) (at start (done step56)) (at start (done step72)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done step89)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (pending ?s)) (at start (done step13)) (at start (done step16)) (at start (done step27)) (at start (done step72)) (at start (done step76)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done step13)) (at start (done step47)) (at start (done step63)) (at start (done step81)) (at start (done step84)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step6
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (pending ?s)) (at start (done step3)) (at start (done step11)) (at start (done step15)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step7
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (pending ?s)) (at start (done step20)) (at start (done step25)) (at start (done step49)) (at start (done step74)) (at start (done step88)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step8
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step9
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (pending ?s)) (at start (done step12)) (at start (done step15)) (at start (done step67)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step10
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (pending ?s)) (at start (done step6)) (at start (done step48)) (at start (done step61)) (at start (done step89)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step11
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (pending ?s)) (at start (done step65)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step12
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done step84)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step13
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (done step51)) (at start (done step64)) (at start (done step75)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step14
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (pending ?s)) (at start (done step12)) (at start (done step18)) (at start (done step56)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step15
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (pending ?s)) (at start (done step1)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step16
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (pending ?s)) (at start (done step22)) (at start (done step23)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step17
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (done step65)) (at start (done step73)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step18
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step19
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (pending ?s)) (at start (done step44)) (at start (done step52)) (at start (done step68)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step20
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done step36)) (at start (done step84)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step21
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (pending ?s)) (at start (done step30)) (at start (done step64)) (at start (done step73)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step22
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done step12)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step23
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step24
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done step38)) (at start (done step51)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step25
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step26
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (pending ?s)) (at start (done step12)) (at start (done step68)) (at start (done step73)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step27
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (pending ?s)) (at start (done step15)) (at start (done step24)) (at start (done step49)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step28
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done step84)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step29
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (done step20)) (at start (done step40)) (at start (done step69)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step30
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done step32)) (at start (done step36)) (at start (done step76)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step31
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done step1)) (at start (done step24)) (at start (done step34)) (at start (done step36)) (at start (done step55)) (at start (done step60)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step32
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (done step1)) (at start (done step23)) (at start (done step83)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step33
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (pending ?s)) (at start (done step19)) (at start (done step30)) (at start (done step67)) (at start (done step71)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step34
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done step8)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step35
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (pending ?s)) (at start (done step36)) (at start (done step38)) (at start (done step75)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step36
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done step18)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step37
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (pending ?s)) (at start (done step89)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step38
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (pending ?s)) (at start (done step84)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step39
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (pending ?s)) (at start (done step46)) (at start (done step51)) (at start (done step59)) (at start (done step62)) (at start (done step69)) (at start (done step81)) (at start (done step83)) (at start (done step84)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step40
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (pending ?s)) (at start (done step23)) (at start (done step36)) (at start (done step88)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step41
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (pending ?s)) (at start (done step12)) (at start (done step35)) (at start (done step59)) (at start (done step78)) (at start (done step88)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step42
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (pending ?s)) (at start (done step6)) (at start (done step21)) (at start (done step51)) (at start (done step75)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step43
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done step25)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step44
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done step28)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step45
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done step78)) (at start (done step83)) (at start (done step84)) (at start (done step88)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step46
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step47
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (pending ?s)) (at start (done step14)) (at start (done step17)) (at start (done step28)) (at start (done step49)) (at start (done step54)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step48
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done step59)) (at start (done step71)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step49
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (pending ?s)) (at start (done step13)) (at start (done step25)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step50
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (pending ?s)) (at start (done step62)) (at start (done step63)) (at start (done step66)) (at start (done step68)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step51
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (pending ?s)) (at start (done step15)) (at start (done step17)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step52
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done step43)) (at start (done step83)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step53
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (pending ?s)) (at start (done step6)) (at start (done step36)) (at start (done step37)) (at start (done step51)) (at start (done step68)) (at start (done step71)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step54
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (pending ?s)) (at start (done step24)) (at start (done step51)) (at start (done step59)) (at start (done step68)) (at start (done step70)) (at start (done step79)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step55
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (pending ?s)) (at start (done step36)) (at start (done step63)) (at start (done step75)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step56
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done step24)) (at start (done step63)) (at start (done step75)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step57
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done step35)) (at start (done step42)) (at start (done step80)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step58
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done step21)) (at start (done step39)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step59
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (done step17)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step60
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (done step28)) (at start (done step59)) (at start (done step65)) (at start (done step79)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step61
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (pending ?s)) (at start (done step23)) (at start (done step24)) (at start (done step38)) (at start (done step60)) (at start (done step67)) (at start (done step85)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step62
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (pending ?s)) (at start (done step48)) (at start (done step85)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step63
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (pending ?s)) (at start (done step1)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step64
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (pending ?s)) (at start (done step29)) (at start (done step70)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step65
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step66
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (pending ?s)) (at start (done step11)) (at start (done step43)) (at start (done step80)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step67
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (pending ?s)) (at start (done step1)) (at start (done step21)) (at start (done step25)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step68
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (pending ?s)) (at start (done step63)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step69
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done step75)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step70
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (pending ?s)) (at start (done step8)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step71
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (pending ?s)) (at start (done step25)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step72
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step73
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step74
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done step38)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step75
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step76
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (pending ?s)) (at start (done step51)) (at start (done step89)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step77
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done step3)) (at start (done step11)) (at start (done step37)) (at start (done step40)) (at start (done step56)) (at start (done step60)) (at start (done step65)) (at start (done step78)) (at start (done step81)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step78
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (pending ?s)) (at start (done step25)) (at start (done step28)) (at start (done step29)) (at start (done step36)) (at start (done step69)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step79
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done step16)) (at start (done step43)) (at start (done step46)) (at start (done step73)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step80
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done step84)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step81
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (done step12)) (at start (done step28)) (at start (done step63)) (at start (done step73)) (at start (done step79)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step82
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done step12)) (at start (done step16)) (at start (done step32)) (at start (done step39)) (at start (done step41)) (at start (done step47)) (at start (done step63)) (at start (done step77)) (at start (done step86)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step83
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (done step84)) (at start (done step88)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step84
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step85
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (pending ?s)) (at start (done step15)) (at start (done step46)) (at start (done step66)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step86
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (pending ?s)) (at start (done step48)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step87
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done step8)) (at start (done step40)) (at start (done step52)) (at start (done step61)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step88
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step89
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (pending ?s)) (at start (done step66)) (at start (done step80)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )

  (:durative-action step90
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done step10)) (at start (done step19)) (at start (done step27)) (at start (done step69)) (at start (done step78)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s)))
  )
)