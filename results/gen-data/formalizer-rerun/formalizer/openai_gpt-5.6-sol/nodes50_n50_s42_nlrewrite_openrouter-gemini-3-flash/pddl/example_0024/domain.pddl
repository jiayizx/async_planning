(define (domain data-range)
 (:requirements :durative-actions :typing)
 (:types
  step
  t1 t2 t3 t4 t5 t6 t7 t8 t9 t10
  t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
  t21 t22 t23 t24 t25 t26 t27 t28 t29 t30
  t31 t32 t33 t34 t35 t36 t37 t38 t39 t40
  t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 - step)
 (:predicates
  (step_pending ?s - step)
  (step_done ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50))

 (:durative-action step1-write-final-range
  :parameters (?s - t1) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
 (:durative-action step2-clean-raw-data
  :parameters (?s - t2) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
 (:durative-action step3-identify-smallest
  :parameters (?s - t3) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
 (:durative-action step4-double-check-math
  :parameters (?s - t4) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p8)) (at start (p31)) (at start (p47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
 (:durative-action step5-upload-dataset
  :parameters (?s - t5) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
 (:durative-action step6-locate-ledger
  :parameters (?s - t6) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
 (:durative-action step7-sharpen-pencils
  :parameters (?s - t7) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
 (:durative-action step8-scan-maximum
  :parameters (?s - t8) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p7)) (at start (p9)) (at start (p23)) (at start (p29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
 (:durative-action step9-sort-data
  :parameters (?s - t9) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (p2)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
 (:durative-action step10-verify-no-skips
  :parameters (?s - t10) :duration (= ?duration 720)
  :condition (and (at start (step_pending ?s)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
 (:durative-action step11-highlight-outliers
  :parameters (?s - t11) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p14)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
 (:durative-action step12-cross-reference-source
  :parameters (?s - t12) :duration (= ?duration 7200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
 (:durative-action step13-run-minimum-script
  :parameters (?s - t13) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p33)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
 (:durative-action step14-check-duplicates
  :parameters (?s - t14) :duration (= ?duration 1500)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
 (:durative-action step15-create-backup
  :parameters (?s - t15) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
 (:durative-action step16-print-summary
  :parameters (?s - t16) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p10)) (at start (p13)) (at start (p27)) (at start (p31)) (at start (p40)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
 (:durative-action step17-save-spreadsheet
  :parameters (?s - t17) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
 (:durative-action step18-colleague-review
  :parameters (?s - t18) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
 (:durative-action step19-identify-column-types
  :parameters (?s - t19) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p2)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
 (:durative-action step20-clear-workspace
  :parameters (?s - t20) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
 (:durative-action step21-open-software
  :parameters (?s - t21) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
 (:durative-action step22-download-data
  :parameters (?s - t22) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
 (:durative-action step23-import-data
  :parameters (?s - t23) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
 (:durative-action step24-label-columns
  :parameters (?s - t24) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p2)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
 (:durative-action step25-check-missing-values
  :parameters (?s - t25) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?s)) (at start (p22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
 (:durative-action step26-subtract-minimum
  :parameters (?s - t26) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
 (:durative-action step27-run-descriptive-statistics
  :parameters (?s - t27) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
 (:durative-action step28-transcribe-ledger
  :parameters (?s - t28) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p20)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
 (:durative-action step29-compare-maximum
  :parameters (?s - t29) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p28)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
 (:durative-action step30-organize-table
  :parameters (?s - t30) :duration (= ?duration 3000)
  :condition (and (at start (step_pending ?s)) (at start (p5)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
 (:durative-action step31-final-audit
  :parameters (?s - t31) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
 (:durative-action step32-calibrate-calculator
  :parameters (?s - t32) :duration (= ?duration 30)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
 (:durative-action step33-setup-folder
  :parameters (?s - t33) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
 (:durative-action step34-turn-on-computer
  :parameters (?s - t34) :duration (= ?duration 180)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
 (:durative-action step35-review-distribution
  :parameters (?s - t35) :duration (= ?duration 1500)
  :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p9)) (at start (p19)) (at start (p20)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
 (:durative-action step36-clear-calculator-memory
  :parameters (?s - t36) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (p29)) (at start (p32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
 (:durative-action step37-format-table
  :parameters (?s - t37) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p41)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
 (:durative-action step38-document-method
  :parameters (?s - t38) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
 (:durative-action step39-email-summary
  :parameters (?s - t39) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p10)) (at start (p44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
 (:durative-action step40-login-portal
  :parameters (?s - t40) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
 (:durative-action step41-verify-ledger-pages
  :parameters (?s - t41) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p6)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
 (:durative-action step42-verify-minimum
  :parameters (?s - t42) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p13)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
 (:durative-action step43-note-spread
  :parameters (?s - t43) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
 (:durative-action step44-validate-integrity
  :parameters (?s - t44) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
 (:durative-action step45-check-internet
  :parameters (?s - t45) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
 (:durative-action step46-filter-categories
  :parameters (?s - t46) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
 (:durative-action step47-confirm-maximum
  :parameters (?s - t47) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p35)) (at start (p38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
 (:durative-action step48-sign-form
  :parameters (?s - t48) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p31)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
 (:durative-action step49-draft-conclusion
  :parameters (?s - t49) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p18)) (at start (p26)) (at start (p34)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
 (:durative-action step50-archive-notes
  :parameters (?s - t50) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p10)) (at start (p14)) (at start (p33)) (at start (p34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
)