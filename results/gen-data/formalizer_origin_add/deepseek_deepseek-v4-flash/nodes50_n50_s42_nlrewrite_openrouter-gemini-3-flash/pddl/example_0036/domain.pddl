(define (domain budget_planning)
  (:requirements :durative-actions :typing)
  (:predicates
    (pending_1) (done_1)
    (pending_2) (done_2)
    (pending_3) (done_3)
    (pending_4) (done_4)
    (pending_5) (done_5)
    (pending_6) (done_6)
    (pending_7) (done_7)
    (pending_8) (done_8)
    (pending_9) (done_9)
    (pending_10) (done_10)
    (pending_11) (done_11)
    (pending_12) (done_12)
    (pending_13) (done_13)
    (pending_14) (done_14)
    (pending_15) (done_15)
    (pending_16) (done_16)
    (pending_17) (done_17)
    (pending_18) (done_18)
    (pending_19) (done_19)
    (pending_20) (done_20)
    (pending_21) (done_21)
    (pending_22) (done_22)
    (pending_23) (done_23)
    (pending_24) (done_24)
    (pending_25) (done_25)
    (pending_26) (done_26)
    (pending_27) (done_27)
    (pending_28) (done_28)
    (pending_29) (done_29)
    (pending_30) (done_30)
    (pending_31) (done_31)
    (pending_32) (done_32)
    (pending_33) (done_33)
    (pending_34) (done_34)
    (pending_35) (done_35)
    (pending_36) (done_36)
    (pending_37) (done_37)
    (pending_38) (done_38)
    (pending_39) (done_39)
    (pending_40) (done_40)
    (pending_41) (done_41)
    (pending_42) (done_42)
    (pending_43) (done_43)
    (pending_44) (done_44)
    (pending_45) (done_45)
    (pending_46) (done_46)
    (pending_47) (done_47)
    (pending_48) (done_48)
    (pending_49) (done_49)
    (pending_50) (done_50)
  )
  (:durative-action do_step_1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (pending_1))
      (at start (done_2)) (at start (done_3)) (at start (done_9))
      (at start (done_11)) (at start (done_13)) (at start (done_14))
      (at start (done_15)) (at start (done_16)) (at start (done_21))
      (at start (done_24)) (at start (done_25)) (at start (done_28))
      (at start (done_33)) (at start (done_36)) (at start (done_37))
      (at start (done_38)) (at start (done_45)) (at start (done_46))
      (at start (done_47))
    )
    :effect (and
      (at start (not (pending_1)))
      (at end (done_1))
    )
  )
  (:durative-action do_step_2
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (pending_2))
    :effect (and
      (at start (not (pending_2)))
      (at end (done_2))
    )
  )
  (:durative-action do_step_3
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (pending_3))
      (at start (done_2)) (at start (done_15)) (at start (done_21))
      (at start (done_28)) (at start (done_46)) (at start (done_47))
    )
    :effect (and
      (at start (not (pending_3)))
      (at end (done_3))
    )
  )
  (:durative-action do_step_4
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (pending_4))
      (at start (done_2)) (at start (done_3)) (at start (done_10))
      (at start (done_11)) (at start (done_14)) (at start (done_15))
      (at start (done_16)) (at start (done_21)) (at start (done_25))
      (at start (done_28)) (at start (done_30)) (at start (done_33))
      (at start (done_37)) (at start (done_38)) (at start (done_45))
      (at start (done_46)) (at start (done_47)) (at start (done_48))
    )
    :effect (and
      (at start (not (pending_4)))
      (at end (done_4))
    )
  )
  (:durative-action do_step_5
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and
      (at start (pending_5))
      (at start (done_2)) (at start (done_3)) (at start (done_15))
      (at start (done_19)) (at start (done_21)) (at start (done_22))
      (at start (done_25)) (at start (done_28)) (at start (done_42))
      (at start (done_45)) (at start (done_46)) (at start (done_47))
    )
    :effect (and
      (at start (not (pending_5)))
      (at end (done_5))
    )
  )
  (:durative-action do_step_6
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (pending_6))
      (at start (done_2)) (at start (done_11)) (at start (done_15))
      (at start (done_21)) (at start (done_28)) (at start (done_30))
      (at start (done_33))
    )
    :effect (and
      (at start (not (pending_6)))
      (at end (done_6))
    )
  )
  (:durative-action do_step_7
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (pending_7))
      (at start (done_2)) (at start (done_15)) (at start (done_21))
      (at start (done_25)) (at start (done_28)) (at start (done_43))
      (at start (done_46)) (at start (done_47))
    )
    :effect (and
      (at start (not (pending_7)))
      (at end (done_7))
    )
  )
  (:durative-action do_step_8
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and
      (at start (pending_8))
      (at start (done_2)) (at start (done_3)) (at start (done_12))
      (at start (done_15)) (at start (done_21)) (at start (done_28))
      (at start (done_46)) (at start (done_47))
    )
    :effect (and
      (at start (not (pending_8)))
      (at end (done_8))
    )
  )
  (:durative-action do_step_9
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (pending_9))
      (at start (done_36))
    )
    :effect (and
      (at start (not (pending_9)))
      (at end (done_9))
    )
  )
  (:durative-action do_step_10
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (pending_10))
      (at start (done_2)) (at start (done_3)) (at start (done_11))
      (at start (done_14)) (at start (done_15)) (at start (done_16))
      (at start (done_21)) (at start (done_25)) (at start (done_28))
      (at start (done_33)) (at start (done_37)) (at start (done_38))
      (at start (done_45)) (at start (done_46)) (at start (done_47))
      (at start (done_48))
    )
    :effect (and
      (at start (not (pending_10)))
      (at end (done_10))
    )
  )
  (:durative-action do_step_11
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (pending_11))
      (at start (done_2))
    )
    :effect (and
      (at start (not (pending_11)))
      (at end (done_11))
    )
  )
  (:durative-action do_step_12
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (pending_12))
      (at start (done_2)) (at start (done_3)) (at start (done_15))
      (at start (done_21)) (at start (done_28)) (at start (done_46))
      (at start (done_47))
    )
    :effect (and
      (at start (not (pending_12)))
      (at end (done_12))
    )
  )
  (:durative-action do_step_13
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (pending_13))
      (at start (done_2)) (at start (done_3)) (at start (done_11))
      (at start (done_15)) (at start (done_21)) (at start (done_28))
      (at start (done_33)) (at start (done_46)) (at start (done_47))
    )
    :effect (and
      (at start (not (pending_13)))
      (at end (done_13))
    )
  )
  (:durative-action do_step_14
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and
      (at start (pending_14))
      (at start (done_2)) (at start (done_15)) (at start (done_16))
      (at start (done_21)) (at start (done_28)) (at start (done_38))
      (at start (done_46))
    )
    :effect (and
      (at start (not (pending_14)))
      (at end (done_14))
    )
  )
  (:durative-action do_step_15
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (pending_15))
    :effect (and
      (at start (not (pending_15)))
      (at end (done_15))
    )
  )
  (:durative-action do_step_16
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (pending_16))
    :effect (and
      (at start (not (pending_16)))
      (at end (done_16))
    )
  )
  (:durative-action do_step_17
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (pending_17))
      (at start (done_23)) (at start (done_47))
    )
    :effect (and
      (at start (not (pending_17)))
      (at end (done_17))
    )
  )
  (:durative-action do_step_18
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and
      (at start (pending_18))
      (at start (done_2)) (at start (done_3)) (at start (done_11))
      (at start (done_13)) (at start (done_15)) (at start (done_21))
      (at start (done_28)) (at start (done_33)) (at start (done_39))
      (at start (done_46)) (at start (done_47))
    )
    :effect (and
      (at start (not (pending_18)))
      (at end (done_18))
    )
  )
  (:durative-action do_step_19
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (pending_19))
    :effect (and
      (at start (not (pending_19)))
      (at end (done_19))
    )
  )
  (:durative-action do_step_20
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (pending_20))
      (at start (done_19)) (at start (done_42))
    )
    :effect (and
      (at start (not (pending_20)))
      (at end (done_20))
    )
  )
  (:durative-action do_step_21
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (pending_21))
      (at start (done_2)) (at start (done_15)) (at start (done_28))
    )
    :effect (and
      (at start (not (pending_21)))
      (at end (done_21))
    )
  )
  (:durative-action do_step_22
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (pending_22))
    :effect (and
      (at start (not (pending_22)))
      (at end (done_22))
    )
  )
  (:durative-action do_step_23
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and
      (at start (pending_23))
      (at start (done_47))
    )
    :effect (and
      (at start (not (pending_23)))
      (at end (done_23))
    )
  )
  (:durative-action do_step_24
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (pending_24))
      (at start (done_2)) (at start (done_3)) (at start (done_11))
      (at start (done_13)) (at start (done_15)) (at start (done_21))
      (at start (done_28)) (at start (done_33)) (at start (done_46))
      (at start (done_47))
    )
    :effect (and
      (at start (not (pending_24)))
      (at end (done_24))
    )
  )
  (:durative-action do_step_25
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (pending_25))
    :effect (and
      (at start (not (pending_25)))
      (at end (done_25))
    )
  )
  (:durative-action do_step_26
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (pending_26))
      (at start (done_2)) (at start (done_3)) (at start (done_8))
      (at start (done_12)) (at start (done_15)) (at start (done_21))
      (at start (done_28)) (at start (done_46)) (at start (done_47))
    )
    :effect (and
      (at start (not (pending_26)))
      (at end (done_26))
    )
  )
  (:durative-action do_step_27
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (pending_27))
      (at start (done_2)) (at start (done_15)) (at start (done_28))
      (at start (done_40))
    )
    :effect (and
      (at start (not (pending_27)))
      (at end (done_27))
    )
  )
  (:durative-action do_step_28
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (pending_28))
      (at start (done_2)) (at start (done_15))
    )
    :effect (and
      (at start (not (pending_28)))
      (at end (done_28))
    )
  )
  (:durative-action do_step_29
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (pending_29))
      (at start (done_2)) (at start (done_3)) (at start (done_5))
      (at start (done_11)) (at start (done_14)) (at start (done_15))
      (at start (done_16)) (at start (done_19)) (at start (done_20))
      (at start (done_21)) (at start (done_22)) (at start (done_25))
      (at start (done_28)) (at start (done_30)) (at start (done_31))
      (at start (done_33)) (at start (done_34)) (at start (done_35))
      (at start (done_38)) (at start (done_41)) (at start (done_42))
      (at start (done_44)) (at start (done_45)) (at start (done_46))
      (at start (done_47)) (at start (done_48)) (at start (done_50))
    )
    :effect (and
      (at start (not (pending_29)))
      (at end (done_29))
    )
  )
  (:durative-action do_step_30
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (pending_30))
      (at start (done_2)) (at start (done_11)) (at start (done_15))
      (at start (done_21)) (at start (done_28)) (at start (done_33))
    )
    :effect (and
      (at start (not (pending_30)))
      (at end (done_30))
    )
  )
  (:durative-action do_step_31
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and
      (at start (pending_31))
      (at start (done_2)) (at start (done_15)) (at start (done_21))
      (at start (done_25)) (at start (done_28)) (at start (done_44))
      (at start (done_46))
    )
    :effect (and
      (at start (not (pending_31)))
      (at end (done_31))
    )
  )
  (:durative-action do_step_32
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (pending_32))
      (at start (done_23)) (at start (done_43)) (at start (done_47))
    )
    :effect (and
      (at start (not (pending_32)))
      (at end (done_32))
    )
  )
  (:durative-action do_step_33
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (pending_33))
      (at start (done_2)) (at start (done_11)) (at start (done_15))
      (at start (done_21)) (at start (done_28))
    )
    :effect (and
      (at start (not (pending_33)))
      (at end (done_33))
    )
  )
  (:durative-action do_step_34
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (pending_34))
      (at start (done_2)) (at start (done_3)) (at start (done_5))
      (at start (done_11)) (at start (done_14)) (at start (done_15))
      (at start (done_16)) (at start (done_19)) (at start (done_21))
      (at start (done_22)) (at start (done_25)) (at start (done_28))
      (at start (done_31)) (at start (done_33)) (at start (done_35))
      (at start (done_38)) (at start (done_41)) (at start (done_42))
      (at start (done_44)) (at start (done_45)) (at start (done_46))
      (at start (done_47)) (at start (done_48)) (at start (done_50))
    )
    :effect (and
      (at start (not (pending_34)))
      (at end (done_34))
    )
  )
  (:durative-action do_step_35
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (pending_35))
      (at start (done_25))
    )
    :effect (and
      (at start (not (pending_35)))
      (at end (done_35))
    )
  )
  (:durative-action do_step_36
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (pending_36))
      (at start (done_22))
    )
    :effect (and
      (at start (not (pending_36)))
      (at end (done_36))
    )
  )
  (:durative-action do_step_37
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (pending_37))
      (at start (done_2)) (at start (done_3)) (at start (done_14))
      (at start (done_15)) (at start (done_16)) (at start (done_21))
      (at start (done_25)) (at start (done_28)) (at start (done_38))
      (at start (done_45)) (at start (done_46)) (at start (done_47))
    )
    :effect (and
      (at start (not (pending_37)))
      (at end (done_37))
    )
  )
  (:durative-action do_step_38
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (pending_38))
      (at start (done_16))
    )
    :effect (and
      (at start (not (pending_38)))
      (at end (done_38))
    )
  )
  (:durative-action do_step_39
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and
      (at start (pending_39))
      (at start (done_2)) (at start (done_15)) (at start (done_28))
    )
    :effect (and
      (at start (not (pending_39)))
      (at end (done_39))
    )
  )
  (:durative-action do_step_40
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (pending_40))
    :effect (and
      (at start (not (pending_40)))
      (at end (done_40))
    )
  )
  (:durative-action do_step_41
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (pending_41))
      (at start (done_2)) (at start (done_11)) (at start (done_14))
      (at start (done_15)) (at start (done_16)) (at start (done_21))
      (at start (done_25)) (at start (done_28)) (at start (done_31))
      (at start (done_33)) (at start (done_38)) (at start (done_44))
      (at start (done_46)) (at start (done_48)) (at start (done_50))
    )
    :effect (and
      (at start (not (pending_41)))
      (at end (done_41))
    )
  )
  (:durative-action do_step_42
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (pending_42))
      (at start (done_19))
    )
    :effect (and
      (at start (not (pending_42)))
      (at end (done_42))
    )
  )
  (:durative-action do_step_43
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (pending_43))
      (at start (done_47))
    )
    :effect (and
      (at start (not (pending_43)))
      (at end (done_43))
    )
  )
  (:durative-action do_step_44
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (pending_44))
    :effect (and
      (at start (not (pending_44)))
      (at end (done_44))
    )
  )
  (:durative-action do_step_45
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and
      (at start (pending_45))
      (at start (done_2)) (at start (done_3)) (at start (done_15))
      (at start (done_21)) (at start (done_28)) (at start (done_46))
      (at start (done_47))
    )
    :effect (and
      (at start (not (pending_45)))
      (at end (done_45))
    )
  )
  (:durative-action do_step_46
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (pending_46))
      (at start (done_2)) (at start (done_15)) (at start (done_21))
      (at start (done_28))
    )
    :effect (and
      (at start (not (pending_46)))
      (at end (done_46))
    )
  )
  (:durative-action do_step_47
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (pending_47))
    :effect (and
      (at start (not (pending_47)))
      (at end (done_47))
    )
  )
  (:durative-action do_step_48
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (pending_48))
      (at start (done_2)) (at start (done_11)) (at start (done_15))
      (at start (done_21)) (at start (done_28)) (at start (done_33))
    )
    :effect (and
      (at start (not (pending_48)))
      (at end (done_48))
    )
  )
  (:durative-action do_step_49
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (pending_49))
    :effect (and
      (at start (not (pending_49)))
      (at end (done_49))
    )
  )
  (:durative-action do_step_50
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (pending_50))
      (at start (done_2)) (at start (done_11)) (at start (done_15))
      (at start (done_21)) (at start (done_28)) (at start (done_33))
      (at start (done_46)) (at start (done_48))
    )
    :effect (and
      (at start (not (pending_50)))
      (at end (done_50))
    )
  )
)
