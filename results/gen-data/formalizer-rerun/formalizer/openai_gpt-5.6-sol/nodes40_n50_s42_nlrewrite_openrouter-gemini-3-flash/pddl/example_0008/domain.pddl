(define (domain send-letter)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    t1 t2 t3 t4 t5 t6 t7 t8 t9 t10
    t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
    t21 t22 t23 t24 t25 t26 t27 t28 t29 t30
    t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (c1) (c2) (c3) (c4) (c5) (c6) (c7) (c8) (c9) (c10)
    (c11) (c12) (c13) (c14) (c15) (c16) (c17) (c18) (c19) (c20)
    (c21) (c22) (c23) (c24) (c25) (c26) (c27) (c28) (c29) (c30)
    (c31) (c32) (c33) (c34) (c35) (c36) (c37) (c38) (c39) (c40))

  (:durative-action check-collection-times
    :parameters (?s - t1)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (c32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c1))))

  (:durative-action double-check-zip-code
    :parameters (?s - t2)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (c19)) (at start (c24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c2))))

  (:durative-action draft-letter-body
    :parameters (?s - t3)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (c13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c3))))

  (:durative-action find-envelope
    :parameters (?s - t4)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c4))))

  (:durative-action locate-pen
    :parameters (?s - t5)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c5))))

  (:durative-action search-for-stamps
    :parameters (?s - t6)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c6))))

  (:durative-action write-salutation
    :parameters (?s - t7)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (c37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c7))))

  (:durative-action clear-writing-desk
    :parameters (?s - t8)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (c14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c8))))

  (:durative-action fold-letter
    :parameters (?s - t9)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (c35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c9))))

  (:durative-action set-up-chair
    :parameters (?s - t10)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (c8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c10))))

  (:durative-action buy-stickers
    :parameters (?s - t11)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (c25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c11))))

  (:durative-action confirm-street-address
    :parameters (?s - t12)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (c20)) (at start (c32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c12))))

  (:durative-action brainstorm-message
    :parameters (?s - t13)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c13))))

  (:durative-action gather-stationery
    :parameters (?s - t14)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c14))))

  (:durative-action test-pen
    :parameters (?s - t15)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c15))))

  (:durative-action verify-recipient-name
    :parameters (?s - t16)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c16))))

  (:durative-action affix-stamp
    :parameters (?s - t17)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (c18)) (at start (c38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c17))))

  (:durative-action determine-postage-rate
    :parameters (?s - t18)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c18))))

  (:durative-action retrieve-paper
    :parameters (?s - t19)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (c32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c19))))

  (:durative-action write-return-address
    :parameters (?s - t20)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (c35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c20))))

  (:durative-action write-destination-address
    :parameters (?s - t21)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (c2)) (at start (c24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c21))))

  (:durative-action print-reference-photo
    :parameters (?s - t22)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (c16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c22))))

  (:durative-action insert-letter
    :parameters (?s - t23)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (c4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c23))))

  (:durative-action look-up-phone-number
    :parameters (?s - t24)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (c10)) (at start (c18)) (at start (c22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c24))))

  (:durative-action drive-to-store
    :parameters (?s - t25)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c25))))

  (:durative-action proofread-draft
    :parameters (?s - t26)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (c13)) (at start (c29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c26))))

  (:durative-action decorate-envelope
    :parameters (?s - t27)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (c11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c27))))

  (:durative-action purchase-tape
    :parameters (?s - t28)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (c25)) (at start (c32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c28))))

  (:durative-action sign-letter
    :parameters (?s - t29)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (c18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c29))))

  (:durative-action transcribe-draft
    :parameters (?s - t30)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (c3)) (at start (c7)) (at start (c34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c30))))

  (:durative-action set-aside-letter-opener
    :parameters (?s - t31)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (c10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c31))))

  (:durative-action morning-routine
    :parameters (?s - t32)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c32))))

  (:durative-action apply-wax
    :parameters (?s - t33)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (c6)) (at start (c8)) (at start (c9)) (at start (c40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c33))))

  (:durative-action check-printer-ink
    :parameters (?s - t34)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (c32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c34))))

  (:durative-action write-date
    :parameters (?s - t35)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (c5)) (at start (c15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c35))))

  (:durative-action secure-envelope-flap
    :parameters (?s - t36)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (c4)) (at start (c6)) (at start (c28)) (at start (c33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c36))))

  (:durative-action sharpen-pencil
    :parameters (?s - t37)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c37))))

  (:durative-action peel-stamp-backing
    :parameters (?s - t38)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (c6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c38))))

  (:durative-action organize-desk
    :parameters (?s - t39)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (c8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c39))))

  (:durative-action heat-sealing-wax
    :parameters (?s - t40)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c40))))
)