; Corrected model.
; Issue 1: every previous action accepted any step object, creating 1600 ground actions.
; Issue 2: this allowed the wrong action to achieve (step_done stepN), disconnecting step identity from semantics and duration.
; Fix: each action is parameterless and consumes only its corresponding pending fact.
; Each action now uniquely achieves its matching step_done and semantic predicate.

(define (domain chronic-illness)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  )

  (:durative-action schedule-consultation
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step1)) (at start (p31)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (p1))))

  (:durative-action attend-diagnostic-review
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step2)) (at start (p9)) (at start (p16)) (at start (p22)) (at start (p39)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (p2))))

  (:durative-action research-dietary-restrictions
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (p3))))

  (:durative-action buy-pill-organizer
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (p4))))

  (:durative-action join-support-group
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (p15)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (p5))))

  (:durative-action set-medication-alarm
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (p4)) (at start (p7)) (at start (p20)) (at start (p31)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (p6))))

  (:durative-action track-initial-symptoms
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (p7))))

  (:durative-action create-meal-plan
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step8)) (at start (p3)) (at start (p7)) (at start (p34)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (p8))))

  (:durative-action request-medical-records
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step9)) (at start (p13)) (at start (p16)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (p9))))

  (:durative-action discuss-lifestyle-changes
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step10)) (at start (p5)) (at start (p6)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (p10))))

  (:durative-action undergo-blood-panel
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step11)) (at start (p1)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (p11))))

  (:durative-action fill-prescription
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step12)) (at start (p17)) (at start (p39)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (p12))))

  (:durative-action apply-medical-id
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step13)) (at start (p16)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (p13))))

  (:durative-action organize-medicine-cabinet
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (p4)) (at start (p25)) (at start (p33)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (p14))))

  (:durative-action search-medical-forums
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step15)) (at start (p19)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (p15))))

  (:durative-action obtain-formal-referral
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (p16))))

  (:durative-action meet-clinical-pharmacist
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step17)) (at start (p18)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (p17))))

  (:durative-action compile-specialist-questions
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step18)) (at start (p7)) (at start (p9)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (p18))))

  (:durative-action identify-flare-triggers
    :parameters ()
    :duration (= ?duration 345600)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (p19))))

  (:durative-action purchase-monitoring-equipment
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step20)) (at start (p30)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (p20))))

  (:durative-action submit-prior-authorization
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step21)) (at start (p24)) (at start (p38)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (p21))))

  (:durative-action get-baseline-physical
    :parameters ()
    :duration (= ?duration 5400)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (p22))))

  (:durative-action prepare-emergency-contacts
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step23)) (at start (p8)) (at start (p18)) (at start (p31)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (p23))))

  (:durative-action perform-confirmatory-tests
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step24)) (at start (p2)) (at start (p8)) (at start (p27)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (p24))))

  (:durative-action install-shower-grab-bar
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (p25))))

  (:durative-action buy-recovery-clothing
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step26)) (at start (p30)) (at start (p38)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (p26))))

  (:durative-action schedule-physical-therapy
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step27)) (at start (p35)) (at start (p38)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (p27))))

  (:durative-action update-employer
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step28)) (at start (p10)) (at start (p13)) (at start (p32)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (p28))))

  (:durative-action start-low-impact-exercise
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step29)) (at start (p2)) (at start (p21)) (at start (p33)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (p29))))

  (:durative-action research-assistive-devices
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (p30))))

  (:durative-action check-insurance-coverage
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (p31))))

  (:durative-action register-patient-portal
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step32)) (at start (p13)) (at start (p31)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (p32))))

  (:durative-action purchase-supplements
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (p33))))

  (:durative-action interview-home-health-aide
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step34)) (at start (p19)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (p34))))

  (:durative-action read-chronic-pain-book
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step35)) (at start (p15)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (p35))))

  (:durative-action synchronize-health-data
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step36)) (at start (p39)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (p36))))

  (:durative-action practice-mindfulness
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step37)) (at start (p5)) (at start (p20)) (at start (p40)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (p37))))

  (:durative-action consult-medical-social-worker
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step38)) (at start (p16)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (p38))))

  (:durative-action receive-final-treatment-plan
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step39)) (at start (p17)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (p39))))

  (:durative-action buy-specialized-kitchen-tools
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step40)) (at start (p3)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (p40))))
)