(define (domain fertility_domain_no_params)
  (:requirements :durative-actions :typing)
  (:types)
  (:predicates
    (complete1) (complete2) (complete3) (complete4) (complete5)
    (complete6) (complete7) (complete8) (complete9) (complete10)
    (complete11) (complete12) (complete13) (complete14) (complete15)
    (complete16) (complete17) (complete18) (complete19) (complete20)
    (complete21) (complete22) (complete23) (complete24) (complete25)
    (complete26) (complete27) (complete28) (complete29) (complete30)
    (complete31) (complete32) (complete33) (complete34) (complete35)
    (complete36) (complete37) (complete38) (complete39) (complete40)
    (complete41) (complete42) (complete43) (complete44) (complete45)
    (complete46) (complete47) (complete48) (complete49) (complete50)
  )
  (:durative-action do_step1
    :duration (= ?duration 7200)
    :effect (at end (complete1))
  )
  (:durative-action do_step2
    :duration (= ?duration 900)
    :condition (at start (complete11))
    :effect (at end (complete2))
  )
  (:durative-action do_step3
    :duration (= ?duration 2700)
    :condition (and (at start (complete20)) (at start (complete39)))
    :effect (at end (complete3))
  )
  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (at start (complete40))
    :effect (at end (complete4))
  )
  (:durative-action do_step5
    :duration (= ?duration 1800)
    :condition (and (at start (complete20)) (at start (complete41)) (at start (complete43)) (at start (complete44)))
    :effect (at end (complete5))
  )
  (:durative-action do_step6
    :duration (= ?duration 1800)
    :condition (and (at start (complete2)) (at start (complete39)))
    :effect (at end (complete6))
  )
  (:durative-action do_step7
    :duration (= ?duration 3600)
    :effect (at end (complete7))
  )
  (:durative-action do_step8
    :duration (= ?duration 1200)
    :condition (and (at start (complete7)) (at start (complete30)))
    :effect (at end (complete8))
  )
  (:durative-action do_step9
    :duration (= ?duration 900)
    :condition (and (at start (complete16)) (at start (complete31)))
    :effect (at end (complete9))
  )
  (:durative-action do_step10
    :duration (= ?duration 600)
    :condition (and (at start (complete8)) (at start (complete17)) (at start (complete23)) (at start (complete44)))
    :effect (at end (complete10))
  )
  (:durative-action do_step11
    :duration (= ?duration 1800)
    :effect (at end (complete11))
  )
  (:durative-action do_step12
    :duration (= ?duration 300)
    :condition (at start (complete5))
    :effect (at end (complete12))
  )
  (:durative-action do_step13
    :duration (= ?duration 900)
    :condition (and (at start (complete17)) (at start (complete21)) (at start (complete37)))
    :effect (at end (complete13))
  )
  (:durative-action do_step14
    :duration (= ?duration 259200)
    :condition (and (at start (complete4)) (at start (complete19)) (at start (complete41)))
    :effect (at end (complete14))
  )
  (:durative-action do_step15
    :duration (= ?duration 1200)
    :condition (and (at start (complete31)) (at start (complete37)))
    :effect (at end (complete15))
  )
  (:durative-action do_step16
    :duration (= ?duration 1800)
    :condition (at start (complete34))
    :effect (at end (complete16))
  )
  (:durative-action do_step17
    :duration (= ?duration 1200)
    :effect (at end (complete17))
  )
  (:durative-action do_step18
    :duration (= ?duration 3600)
    :condition (and (at start (complete11)) (at start (complete16)))
    :effect (at end (complete18))
  )
  (:durative-action do_step19
    :duration (= ?duration 900)
    :condition (and (at start (complete10)) (at start (complete22)))
    :effect (at end (complete19))
  )
  (:durative-action do_step20
    :duration (= ?duration 3600)
    :condition (and (at start (complete31)) (at start (complete35)))
    :effect (at end (complete20))
  )
  (:durative-action do_step21
    :duration (= ?duration 600)
    :condition (at start (complete17))
    :effect (at end (complete21))
  )
  (:durative-action do_step22
    :duration (= ?duration 300)
    :effect (at end (complete22))
  )
  (:durative-action do_step23
    :duration (= ?duration 1200)
    :condition (at start (complete4))
    :effect (at end (complete23))
  )
  (:durative-action do_step24
    :duration (= ?duration 300)
    :condition (and (at start (complete1)) (at start (complete8)) (at start (complete9)) (at start (complete30)) (at start (complete44)))
    :effect (at end (complete24))
  )
  (:durative-action do_step25
    :duration (= ?duration 2400)
    :effect (at end (complete25))
  )
  (:durative-action do_step26
    :duration (= ?duration 300)
    :condition (and (at start (complete11)) (at start (complete24)) (at start (complete31)))
    :effect (at end (complete26))
  )
  (:durative-action do_step27
    :duration (= ?duration 300)
    :condition (and (at start (complete13)) (at start (complete20)) (at start (complete23)))
    :effect (at end (complete27))
  )
  (:durative-action do_step28
    :duration (= ?duration 600)
    :condition (at start (complete25))
    :effect (at end (complete28))
  )
  (:durative-action do_step29
    :duration (= ?duration 300)
    :condition (and (at start (complete6)) (at start (complete16)) (at start (complete44)))
    :effect (at end (complete29))
  )
  (:durative-action do_step30
    :duration (= ?duration 300)
    :condition (at start (complete25))
    :effect (at end (complete30))
  )
  (:durative-action do_step31
    :duration (= ?duration 900)
    :condition (at start (complete16))
    :effect (at end (complete31))
  )
  (:durative-action do_step32
    :duration (= ?duration 1800)
    :condition (at start (complete25))
    :effect (at end (complete32))
  )
  (:durative-action do_step33
    :duration (= ?duration 600)
    :condition (and (at start (complete10)) (at start (complete41)))
    :effect (at end (complete33))
  )
  (:durative-action do_step34
    :duration (= ?duration 1200)
    :condition (at start (complete11))
    :effect (at end (complete34))
  )
  (:durative-action do_step35
    :duration (= ?duration 7200)
    :effect (at end (complete35))
  )
  (:durative-action do_step36
    :duration (= ?duration 3600)
    :condition (and (at start (complete38)) (at start (complete43)))
    :effect (at end (complete36))
  )
  (:durative-action do_step37
    :duration (= ?duration 600)
    :condition (and (at start (complete6)) (at start (complete22)) (at start (complete30)) (at start (complete46)))
    :effect (at end (complete37))
  )
  (:durative-action do_step38
    :duration (= ?duration 900)
    :effect (at end (complete38))
  )
  (:durative-action do_step39
    :duration (= ?duration 3600)
    :condition (at start (complete17))
    :effect (at end (complete39))
  )
  (:durative-action do_step40
    :duration (= ?duration 600)
    :effect (at end (complete40))
  )
  (:durative-action do_step41
    :duration (= ?duration 600)
    :condition (and (at start (complete2)) (at start (complete34)) (at start (complete35)))
    :effect (at end (complete41))
  )
  (:durative-action do_step42
    :duration (= ?duration 1200)
    :condition (and (at start (complete4)) (at start (complete15)) (at start (complete22)))
    :effect (at end (complete42))
  )
  (:durative-action do_step43
    :duration (= ?duration 1800)
    :condition (and (at start (complete3)) (at start (complete20)) (at start (complete42)))
    :effect (at end (complete43))
  )
  (:durative-action do_step44
    :duration (= ?duration 1200)
    :condition (and (at start (complete6)) (at start (complete11)))
    :effect (at end (complete44))
  )
  (:durative-action do_step45
    :duration (= ?duration 900)
    :condition (at start (complete44))
    :effect (at end (complete45))
  )
  (:durative-action do_step46
    :duration (= ?duration 300)
    :effect (at end (complete46))
  )
  (:durative-action do_step47
    :duration (= ?duration 1800)
    :condition (and (at start (complete7)) (at start (complete46)))
    :effect (at end (complete47))
  )
  (:durative-action do_step48
    :duration (= ?duration 900)
    :condition (at start (complete34))
    :effect (at end (complete48))
  )
  (:durative-action do_step49
    :duration (= ?duration 600)
    :condition (and (at start (complete1)) (at start (complete13)) (at start (complete26)))
    :effect (at end (complete49))
  )
  (:durative-action do_step50
    :duration (= ?duration 3600)
    :condition (and (at start (complete2)) (at start (complete28)) (at start (complete31)) (at start (complete39)))
    :effect (at end (complete50))
  )
)