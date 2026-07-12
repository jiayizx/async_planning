(define (domain choose-life-insurance)
 (:requirements :durative-actions :typing)
 (:types step t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done)
  (s7_done) (s8_done) (s9_done) (s10_done) (s11_done) (s12_done)
  (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done)
  (s19_done) (s20_done) (s21_done) (s22_done) (s23_done) (s24_done)
  (s25_done) (s26_done) (s27_done) (s28_done) (s29_done)
  (policy_finalized))

 (:durative-action calculate-household-debt
  :parameters (?s - t1)
  :duration (= ?duration 7200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))

 (:durative-action research-policy-types
  :parameters (?s - t2)
  :duration (= ?duration 10800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))

 (:durative-action compare-premium-rates
  :parameters (?s - t3)
  :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (s13_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))

 (:durative-action submit-applications
  :parameters (?s - t4)
  :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (s12_done)) (at start (s14_done)) (at start (s24_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))

 (:durative-action determine-coverage
  :parameters (?s - t5)
  :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s9_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))

 (:durative-action undergo-medical-exam
  :parameters (?s - t6)
  :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (s4_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))

 (:durative-action gather-family-history
  :parameters (?s - t7)
  :duration (= ?duration 10800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))

 (:durative-action review-exclusions
  :parameters (?s - t8)
  :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s16_done)) (at start (s21_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))

 (:durative-action consult-financial-advisor
  :parameters (?s - t9)
  :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (s26_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))

 (:durative-action upload-identity-documents
  :parameters (?s - t10)
  :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (s7_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))

 (:durative-action finalize-beneficiaries
  :parameters (?s - t11)
  :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (s17_done)) (at start (s22_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))

 (:durative-action create-insurer-shortlist
  :parameters (?s - t12)
  :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))

 (:durative-action evaluate-riders
  :parameters (?s - t13)
  :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s25_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))

 (:durative-action request-personalized-quotes
  :parameters (?s - t14)
  :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s21_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))

 (:durative-action verify-financial-ratings
  :parameters (?s - t15)
  :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (s10_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))

 (:durative-action read-customer-reviews
  :parameters (?s - t16)
  :duration (= ?duration 7200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))

 (:durative-action discuss-premium-budget
  :parameters (?s - t17)
  :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s29_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))

 (:durative-action check-employer-benefits
  :parameters (?s - t18)
  :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (s29_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))

 (:durative-action estimate-future-costs
  :parameters (?s - t19)
  :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (s20_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))

 (:durative-action estimate-final-expenses
  :parameters (?s - t20)
  :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (s5_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))

 (:durative-action document-income-assets
  :parameters (?s - t21)
  :duration (= ?duration 7200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))

 (:durative-action select-policy-term
  :parameters (?s - t22)
  :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (s8_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done))))

 (:durative-action compare-tax-implications
  :parameters (?s - t23)
  :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (s9_done)) (at start (s16_done)) (at start (s18_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))

 (:durative-action review-binding-receipts
  :parameters (?s - t24)
  :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (s28_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))

 (:durative-action determine-income-replacement
  :parameters (?s - t25)
  :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s19_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))

 (:durative-action attend-wealth-webinar
  :parameters (?s - t26)
  :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (s18_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))

 (:durative-action list-medications-habits
  :parameters (?s - t27)
  :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (s10_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))

 (:durative-action confirm-underwriting
  :parameters (?s - t28)
  :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (s15_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))

 (:durative-action choose-payment-frequency
  :parameters (?s - t29)
  :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (s24_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))

 (:durative-action sign-policy-and-pay
  :parameters (?s - t30)
  :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s24_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (policy_finalized))))
)