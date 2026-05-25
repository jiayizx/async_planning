(define (domain love-domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
    (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
  )

  (:durative-action step1
    :duration (= ?duration 172800)
    :condition (at start (step_pending s1))
    :effect (and (at start (not (step_pending s1))) (at end (step_done s1)) (at end (done1)))
  )

  (:durative-action step2
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending s2)) (at start (done1)) (at start (done10)) (at start (done13)) (at start (done16)) (at start (done27)))
    :effect (and (at start (not (step_pending s2))) (at end (step_done s2)) (at end (done2)))
  )

  (:durative-action step3
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s3)) (at start (done12)) (at start (done31)))
    :effect (and (at start (not (step_pending s3))) (at end (step_done s3)) (at end (done3)))
  )

  (:durative-action step4
    :duration (= ?duration 1814400)
    :condition (at start (step_pending s4))
    :effect (and (at start (not (step_pending s4))) (at end (step_done s4)) (at end (done4)))
  )

  (:durative-action step5
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s5)) (at start (done18)) (at start (done28)) (at start (done45)))
    :effect (and (at start (not (step_pending s5))) (at end (step_done s5)) (at end (done5)))
  )

  (:durative-action step6
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s6)) (at start (done18)) (at start (done23)))
    :effect (and (at start (not (step_pending s6))) (at end (step_done s6)) (at end (done6)))
  )

  (:durative-action step7
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s7)) (at start (done14)))
    :effect (and (at start (not (step_pending s7))) (at end (step_done s7)) (at end (done7)))
  )

  (:durative-action step8
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s8)) (at start (done1)))
    :effect (and (at start (not (step_pending s8))) (at end (step_done s8)) (at end (done8)))
  )

  (:durative-action step9
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s9)) (at start (done30)) (at start (done47)))
    :effect (and (at start (not (step_pending s9))) (at end (step_done s9)) (at end (done9)))
  )

  (:durative-action step10
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending s10)) (at start (done26)) (at start (done32)))
    :effect (and (at start (not (step_pending s10))) (at end (step_done s10)) (at end (done10)))
  )

  (:durative-action step11
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s11)) (at start (done1)) (at start (done13)) (at start (done18)) (at start (done23)))
    :effect (and (at start (not (step_pending s11))) (at end (step_done s11)) (at end (done11)))
  )

  (:durative-action step12
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s12)) (at start (done13)) (at start (done24)))
    :effect (and (at start (not (step_pending s12))) (at end (step_done s12)) (at end (done12)))
  )

  (:durative-action step13
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending s13)) (at start (done19)))
    :effect (and (at start (not (step_pending s13))) (at end (step_done s13)) (at end (done13)))
  )

  (:durative-action step14
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s14)) (at start (done50)))
    :effect (and (at start (not (step_pending s14))) (at end (step_done s14)) (at end (done14)))
  )

  (:durative-action step15
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s15)) (at start (done25)) (at start (done37)) (at start (done41)))
    :effect (and (at start (not (step_pending s15))) (at end (step_done s15)) (at end (done15)))
  )

  (:durative-action step16
    :duration (= ?duration 600)
    :condition (at start (step_pending s16))
    :effect (and (at start (not (step_pending s16))) (at end (step_done s16)) (at end (done16)))
  )

  (:durative-action step17
    :duration (= ?duration 1800)
    :condition (at start (step_pending s17))
    :effect (and (at start (not (step_pending s17))) (at end (step_done s17)) (at end (done17)))
  )

  (:durative-action step18
    :duration (= ?duration 1200)
    :condition (at start (step_pending s18))
    :effect (and (at start (not (step_pending s18))) (at end (step_done s18)) (at end (done18)))
  )

  (:durative-action step19
    :duration (= ?duration 3600)
    :condition (at start (step_pending s19))
    :effect (and (at start (not (step_pending s19))) (at end (step_done s19)) (at end (done19)))
  )

  (:durative-action step20
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s20)) (at start (done13)) (at start (done21)) (at start (done45)) (at start (done50)))
    :effect (and (at start (not (step_pending s20))) (at end (step_done s20)) (at end (done20)))
  )

  (:durative-action step21
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s21)) (at start (done4)) (at start (done48)))
    :effect (and (at start (not (step_pending s21))) (at end (step_done s21)) (at end (done21)))
  )

  (:durative-action step22
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s22)) (at start (done38)))
    :effect (and (at start (not (step_pending s22))) (at end (step_done s22)) (at end (done22)))
  )

  (:durative-action step23
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s23)) (at start (done25)))
    :effect (and (at start (not (step_pending s23))) (at end (step_done s23)) (at end (done23)))
  )

  (:durative-action step24
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending s24)) (at start (done29)))
    :effect (and (at start (not (step_pending s24))) (at end (step_done s24)) (at end (done24)))
  )

  (:durative-action step25
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s25)) (at start (done1)) (at start (done31)))
    :effect (and (at start (not (step_pending s25))) (at end (step_done s25)) (at end (done25)))
  )

  (:durative-action step26
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s26)) (at start (done44)))
    :effect (and (at start (not (step_pending s26))) (at end (step_done s26)) (at end (done26)))
  )

  (:durative-action step27
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s27)) (at start (done16)))
    :effect (and (at start (not (step_pending s27))) (at end (step_done s27)) (at end (done27)))
  )

  (:durative-action step28
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s28)) (at start (done16)))
    :effect (and (at start (not (step_pending s28))) (at end (step_done s28)) (at end (done28)))
  )

  (:durative-action step29
    :duration (= ?duration 1800)
    :condition (at start (step_pending s29))
    :effect (and (at start (not (step_pending s29))) (at end (step_done s29)) (at end (done29)))
  )

  (:durative-action step30
    :duration (= ?duration 10)
    :condition (and (at start (step_pending s30)) (at start (done17)) (at start (done18)) (at start (done42)))
    :effect (and (at start (not (step_pending s30))) (at end (step_done s30)) (at end (done30)))
  )

  (:durative-action step31
    :duration (= ?duration 2700)
    :condition (at start (step_pending s31))
    :effect (and (at start (not (step_pending s31))) (at end (step_done s31)) (at end (done31)))
  )

  (:durative-action step32
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s32)) (at start (done19)) (at start (done38)) (at start (done39)))
    :effect (and (at start (not (step_pending s32))) (at end (step_done s32)) (at end (done32)))
  )

  (:durative-action step33
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s33)) (at start (done20)) (at start (done35)))
    :effect (and (at start (not (step_pending s33))) (at end (step_done s33)) (at end (done33)))
  )

  (:durative-action step34
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s34)) (at start (done16)) (at start (done25)) (at start (done31)))
    :effect (and (at start (not (step_pending s34))) (at end (step_done s34)) (at end (done34)))
  )

  (:durative-action step35
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s35)) (at start (done11)) (at start (done49)))
    :effect (and (at start (not (step_pending s35))) (at end (step_done s35)) (at end (done35)))
  )

  (:durative-action step36
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s36)) (at start (done7)) (at start (done23)) (at start (done28)) (at start (done40)))
    :effect (and (at start (not (step_pending s36))) (at end (step_done s36)) (at end (done36)))
  )

  (:durative-action step37
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s37)) (at start (done11)) (at start (done24)) (at start (done46)))
    :effect (and (at start (not (step_pending s37))) (at end (step_done s37)) (at end (done37)))
  )

  (:durative-action step38
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s38)) (at start (done23)) (at start (done28)))
    :effect (and (at start (not (step_pending s38))) (at end (step_done s38)) (at end (done38)))
  )

  (:durative-action step39
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending s39)) (at start (done1)))
    :effect (and (at start (not (step_pending s39))) (at end (step_done s39)) (at end (done39)))
  )

  (:durative-action step40
    :duration (= ?duration 10)
    :condition (and (at start (step_pending s40)) (at start (done19)))
    :effect (and (at start (not (step_pending s40))) (at end (step_done s40)) (at end (done40)))
  )

  (:durative-action step41
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s41)) (at start (done2)))
    :effect (and (at start (not (step_pending s41))) (at end (step_done s41)) (at end (done41)))
  )

  (:durative-action step42
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s42)) (at start (done18)))
    :effect (and (at start (not (step_pending s42))) (at end (step_done s42)) (at end (done42)))
  )

  (:durative-action step43
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s43)) (at start (done1)) (at start (done19)) (at start (done21)))
    :effect (and (at start (not (step_pending s43))) (at end (step_done s43)) (at end (done43)))
  )

  (:durative-action step44
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s44)) (at start (done18)))
    :effect (and (at start (not (step_pending s44))) (at end (step_done s44)) (at end (done44)))
  )

  (:durative-action step45
    :duration (= ?duration 900)
    :condition (at start (step_pending s45))
    :effect (and (at start (not (step_pending s45))) (at end (step_done s45)) (at end (done45)))
  )

  (:durative-action step46
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s46)) (at start (done33)))
    :effect (and (at start (not (step_pending s46))) (at end (step_done s46)) (at end (done46)))
  )

  (:durative-action step47
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s47)) (at start (done6)))
    :effect (and (at start (not (step_pending s47))) (at end (step_done s47)) (at end (done47)))
  )

  (:durative-action step48
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s48)) (at start (done4)) (at start (done5)) (at start (done14)))
    :effect (and (at start (not (step_pending s48))) (at end (step_done s48)) (at end (done48)))
  )

  (:durative-action step49
    :duration (= ?duration 300)
    :condition (at start (step_pending s49))
    :effect (and (at start (not (step_pending s49))) (at end (step_done s49)) (at end (done49)))
  )

  (:durative-action step50
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s50)) (at start (done11)))
    :effect (and (at start (not (step_pending s50))) (at end (step_done s50)) (at end (done50)))
  )
)
