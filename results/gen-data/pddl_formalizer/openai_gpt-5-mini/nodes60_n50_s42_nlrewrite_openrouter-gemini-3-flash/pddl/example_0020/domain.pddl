(define (domain cauliflower_rice)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (finished_s1)
    (finished_s2)
    (finished_s3)
    (finished_s4)
    (finished_s5)
    (finished_s6)
    (finished_s7)
    (finished_s8)
    (finished_s9)
    (finished_s10)
    (finished_s11)
    (finished_s12)
    (finished_s13)
    (finished_s14)
    (finished_s15)
    (finished_s16)
    (finished_s17)
    (finished_s18)
    (finished_s19)
    (finished_s20)
    (finished_s21)
    (finished_s22)
    (finished_s23)
    (finished_s24)
    (finished_s25)
    (finished_s26)
    (finished_s27)
    (finished_s28)
    (finished_s29)
    (finished_s30)
    (finished_s31)
    (finished_s32)
    (finished_s33)
    (finished_s34)
    (finished_s35)
    (finished_s36)
    (finished_s37)
    (finished_s38)
    (finished_s39)
    (finished_s40)
    (finished_s41)
    (finished_s42)
    (finished_s43)
    (finished_s44)
    (finished_s45)
    (finished_s46)
    (finished_s47)
    (finished_s48)
    (finished_s49)
    (finished_s50)
    (finished_s51)
    (finished_s52)
    (finished_s53)
    (finished_s54)
    (finished_s55)
    (finished_s56)
    (finished_s57)
    (finished_s58)
    (finished_s59)
    (finished_s60)
  )

  (:durative-action do_s1
    :parameters ()
    :duration (= ?duration 420)
    :condition (and (at start (step_pending s1)) (at start (finished_s9)) (at start (finished_s23)) (at start (finished_s25)) (at start (finished_s34)))
    :effect (and (at start (not (step_pending s1))) (at end (step_done s1)) (at end (finished_s1)))
  )

  (:durative-action do_s2
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s2)) (at start (finished_s10)) (at start (finished_s11)))
    :effect (and (at start (not (step_pending s2))) (at end (step_done s2)) (at end (finished_s2)))
  )

  (:durative-action do_s3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s3)) (at start (finished_s4)) (at start (finished_s23)) (at start (finished_s29)) (at start (finished_s56)))
    :effect (and (at start (not (step_pending s3))) (at end (step_done s3)) (at end (finished_s3)))
  )

  (:durative-action do_s4
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s4)) (at start (finished_s32)) (at start (finished_s34)))
    :effect (and (at start (not (step_pending s4))) (at end (step_done s4)) (at end (finished_s4)))
  )

  (:durative-action do_s5
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending s5)) (at start (finished_s53)))
    :effect (and (at start (not (step_pending s5))) (at end (step_done s5)) (at end (finished_s5)))
  )

  (:durative-action do_s6
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s6)))
    :effect (and (at start (not (step_pending s6))) (at end (step_done s6)) (at end (finished_s6)))
  )

  (:durative-action do_s7
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending s7)) (at start (finished_s13)))
    :effect (and (at start (not (step_pending s7))) (at end (step_done s7)) (at end (finished_s7)))
  )

  (:durative-action do_s8
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s8)) (at start (finished_s26)) (at start (finished_s39)))
    :effect (and (at start (not (step_pending s8))) (at end (step_done s8)) (at end (finished_s8)))
  )

  (:durative-action do_s9
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s9)) (at start (finished_s24)) (at start (finished_s53)))
    :effect (and (at start (not (step_pending s9))) (at end (step_done s9)) (at end (finished_s9)))
  )

  (:durative-action do_s10
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s10)) (at start (finished_s32)) (at start (finished_s39)))
    :effect (and (at start (not (step_pending s10))) (at end (step_done s10)) (at end (finished_s10)))
  )

  (:durative-action do_s11
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s11)))
    :effect (and (at start (not (step_pending s11))) (at end (step_done s11)) (at end (finished_s11)))
  )

  (:durative-action do_s12
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s12)) (at start (finished_s13)))
    :effect (and (at start (not (step_pending s12))) (at end (step_done s12)) (at end (finished_s12)))
  )

  (:durative-action do_s13
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s13)) (at start (finished_s5)) (at start (finished_s43)))
    :effect (and (at start (not (step_pending s13))) (at end (step_done s13)) (at end (finished_s13)))
  )

  (:durative-action do_s14
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s14)))
    :effect (and (at start (not (step_pending s14))) (at end (step_done s14)) (at end (finished_s14)))
  )

  (:durative-action do_s15
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending s15)) (at start (finished_s8)) (at start (finished_s42)))
    :effect (and (at start (not (step_pending s15))) (at end (step_done s15)) (at end (finished_s15)))
  )

  (:durative-action do_s16
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s16)))
    :effect (and (at start (not (step_pending s16))) (at end (step_done s16)) (at end (finished_s16)))
  )

  (:durative-action do_s17
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s17)) (at start (finished_s47)))
    :effect (and (at start (not (step_pending s17))) (at end (step_done s17)) (at end (finished_s17)))
  )

  (:durative-action do_s18
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending s18)))
    :effect (and (at start (not (step_pending s18))) (at end (step_done s18)) (at end (finished_s18)))
  )

  (:durative-action do_s19
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s19)) (at start (finished_s39)) (at start (finished_s42)))
    :effect (and (at start (not (step_pending s19))) (at end (step_done s19)) (at end (finished_s19)))
  )

  (:durative-action do_s20
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending s20)) (at start (finished_s11)) (at start (finished_s30)) (at start (finished_s32)) (at start (finished_s53)))
    :effect (and (at start (not (step_pending s20))) (at end (step_done s20)) (at end (finished_s20)))
  )

  (:durative-action do_s21
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s21)))
    :effect (and (at start (not (step_pending s21))) (at end (step_done s21)) (at end (finished_s21)))
  )

  (:durative-action do_s22
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s22)) (at start (finished_s20)) (at start (finished_s26)) (at start (finished_s27)))
    :effect (and (at start (not (step_pending s22))) (at end (step_done s22)) (at end (finished_s22)))
  )

  (:durative-action do_s23
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s23)) (at start (finished_s7)) (at start (finished_s32)))
    :effect (and (at start (not (step_pending s23))) (at end (step_done s23)) (at end (finished_s23)))
  )

  (:durative-action do_s24
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s24)) (at start (finished_s28)) (at start (finished_s30)))
    :effect (and (at start (not (step_pending s24))) (at end (step_done s24)) (at end (finished_s24)))
  )

  (:durative-action do_s25
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s25)) (at start (finished_s57)))
    :effect (and (at start (not (step_pending s25))) (at end (step_done s25)) (at end (finished_s25)))
  )

  (:durative-action do_s26
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s26)) (at start (finished_s29)))
    :effect (and (at start (not (step_pending s26))) (at end (step_done s26)) (at end (finished_s26)))
  )

  (:durative-action do_s27
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending s27)))
    :effect (and (at start (not (step_pending s27))) (at end (step_done s27)) (at end (finished_s27)))
  )

  (:durative-action do_s28
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s28)) (at start (finished_s32)))
    :effect (and (at start (not (step_pending s28))) (at end (step_done s28)) (at end (finished_s28)))
  )

  (:durative-action do_s29
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s29)) (at start (finished_s40)))
    :effect (and (at start (not (step_pending s29))) (at end (step_done s29)) (at end (finished_s29)))
  )

  (:durative-action do_s30
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s30)) (at start (finished_s41)))
    :effect (and (at start (not (step_pending s30))) (at end (step_done s30)) (at end (finished_s30)))
  )

  (:durative-action do_s31
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s31)) (at start (finished_s6)) (at start (finished_s35)) (at start (finished_s50)) (at start (finished_s32)))
    :effect (and (at start (not (step_pending s31))) (at end (step_done s31)) (at end (finished_s31)))
  )

  (:durative-action do_s32
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending s32)) (at start (finished_s21)) (at start (finished_s53)))
    :effect (and (at start (not (step_pending s32))) (at end (step_done s32)) (at end (finished_s32)))
  )

  (:durative-action do_s33
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending s33)) (at start (finished_s6)))
    :effect (and (at start (not (step_pending s33))) (at end (step_done s33)) (at end (finished_s33)))
  )

  (:durative-action do_s34
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s34)) (at start (finished_s7)) (at start (finished_s26)) (at start (finished_s29)) (at start (finished_s35)))
    :effect (and (at start (not (step_pending s34))) (at end (step_done s34)) (at end (finished_s34)))
  )

  (:durative-action do_s35
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending s35)) (at start (finished_s20)) (at start (finished_s48)) (at start (finished_s52)))
    :effect (and (at start (not (step_pending s35))) (at end (step_done s35)) (at end (finished_s35)))
  )

  (:durative-action do_s36
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s36)) (at start (finished_s13)))
    :effect (and (at start (not (step_pending s36))) (at end (step_done s36)) (at end (finished_s36)))
  )

  (:durative-action do_s37
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s37)) (at start (finished_s11)) (at start (finished_s23)) (at start (finished_s34)) (at start (finished_s42)))
    :effect (and (at start (not (step_pending s37))) (at end (step_done s37)) (at end (finished_s37)))
  )

  (:durative-action do_s38
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s38)) (at start (finished_s8)) (at start (finished_s19)) (at start (finished_s42)))
    :effect (and (at start (not (step_pending s38))) (at end (step_done s38)) (at end (finished_s38)))
  )

  (:durative-action do_s39
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s39)))
    :effect (and (at start (not (step_pending s39))) (at end (step_done s39)) (at end (finished_s39)))
  )

  (:durative-action do_s40
    :parameters ()
    :duration (= ?duration 40)
    :condition (and (at start (step_pending s40)))
    :effect (and (at start (not (step_pending s40))) (at end (step_done s40)) (at end (finished_s40)))
  )

  (:durative-action do_s41
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s41)) (at start (finished_s11)))
    :effect (and (at start (not (step_pending s41))) (at end (step_done s41)) (at end (finished_s41)))
  )

  (:durative-action do_s42
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s42)) (at start (finished_s12)))
    :effect (and (at start (not (step_pending s42))) (at end (step_done s42)) (at end (finished_s42)))
  )

  (:durative-action do_s43
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending s43)) (at start (finished_s18)))
    :effect (and (at start (not (step_pending s43))) (at end (step_done s43)) (at end (finished_s43)))
  )

  (:durative-action do_s44
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending s44)) (at start (finished_s1)) (at start (finished_s20)) (at start (finished_s25)) (at start (finished_s43)) (at start (finished_s47)) (at start (finished_s52)))
    :effect (and (at start (not (step_pending s44))) (at end (step_done s44)) (at end (finished_s44)))
  )

  (:durative-action do_s45
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s45)) (at start (finished_s50)))
    :effect (and (at start (not (step_pending s45))) (at end (step_done s45)) (at end (finished_s45)))
  )

  (:durative-action do_s46
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending s46)) (at start (finished_s21)))
    :effect (and (at start (not (step_pending s46))) (at end (step_done s46)) (at end (finished_s46)))
  )

  (:durative-action do_s47
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s47)) (at start (finished_s18)))
    :effect (and (at start (not (step_pending s47))) (at end (step_done s47)) (at end (finished_s47)))
  )

  (:durative-action do_s48
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s48)) (at start (finished_s22)))
    :effect (and (at start (not (step_pending s48))) (at end (step_done s48)) (at end (finished_s48)))
  )

  (:durative-action do_s49
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending s49)) (at start (finished_s16)) (at start (finished_s33)))
    :effect (and (at start (not (step_pending s49))) (at end (step_done s49)) (at end (finished_s49)))
  )

  (:durative-action do_s50
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s50)))
    :effect (and (at start (not (step_pending s50))) (at end (step_done s50)) (at end (finished_s50)))
  )

  (:durative-action do_s51
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s51)) (at start (finished_s19)) (at start (finished_s53)) (at start (finished_s60)))
    :effect (and (at start (not (step_pending s51))) (at end (step_done s51)) (at end (finished_s51)))
  )

  (:durative-action do_s52
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s52)) (at start (finished_s2)))
    :effect (and (at start (not (step_pending s52))) (at end (step_done s52)) (at end (finished_s52)))
  )

  (:durative-action do_s53
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending s53)))
    :effect (and (at start (not (step_pending s53))) (at end (step_done s53)) (at end (finished_s53)))
  )

  (:durative-action do_s54
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s54)) (at start (finished_s11)) (at start (finished_s29)) (at start (finished_s47)) (at start (finished_s59)) (at start (finished_s55)))
    :effect (and (at start (not (step_pending s54))) (at end (step_done s54)) (at end (finished_s54)))
  )

  (:durative-action do_s55
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s55)) (at start (finished_s2)) (at start (finished_s17)))
    :effect (and (at start (not (step_pending s55))) (at end (step_done s55)) (at end (finished_s55)))
  )

  (:durative-action do_s56
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending s56)) (at start (finished_s5)) (at start (finished_s21)))
    :effect (and (at start (not (step_pending s56))) (at end (step_done s56)) (at end (finished_s56)))
  )

  (:durative-action do_s57
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending s57)) (at start (finished_s14)) (at start (finished_s53)))
    :effect (and (at start (not (step_pending s57))) (at end (step_done s57)) (at end (finished_s57)))
  )

  (:durative-action do_s58
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending s58)) (at start (finished_s14)) (at start (finished_s42)))
    :effect (and (at start (not (step_pending s58))) (at end (step_done s58)) (at end (finished_s58)))
  )

  (:durative-action do_s59
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s59)) (at start (finished_s50)))
    :effect (and (at start (not (step_pending s59))) (at end (step_done s59)) (at end (finished_s59)))
  )

  (:durative-action do_s60
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s60)) (at start (finished_s21)))
    :effect (and (at start (not (step_pending s60))) (at end (step_done s60)) (at end (finished_s60)))
  )
)
