(define (domain throw_party)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
    (step11_pending) (step11_done)
    (step12_pending) (step12_done)
    (step13_pending) (step13_done)
    (step14_pending) (step14_done)
    (step15_pending) (step15_done)
  )

  ;; Step 1: Choose a party theme (7200s)
  ;; Predecessor: Step 11 must precede Step 1
  (:durative-action do_step1
     :parameters ()
     :duration (= ?duration 7200)
     :condition (and (at start (step1_pending)) (at start (step11_done)))
     :effect (and (at start (not (step1_pending))) (at end (step1_done))))

  ;; Step 2: Send out digital invitations (1800s)
  ;; Predecessor: Step 4 must precede Step 2
  (:durative-action do_step2
     :parameters ()
     :duration (= ?duration 1800)
     :condition (and (at start (step2_pending)) (at start (step4_done)))
     :effect (and (at start (not (step2_pending))) (at end (step2_done))))

  ;; Step 3: Purchase groceries and drinks (3600s)
  ;; Predecessor: Step 14 must precede Step 3
  (:durative-action do_step3
     :parameters ()
     :duration (= ?duration 3600)
     :condition (and (at start (step3_pending)) (at start (step14_done)))
     :effect (and (at start (not (step3_pending))) (at end (step3_done))))

  ;; Step 4: Finalize the guest list (2700s)
  ;; Predecessors: Step 6 and Step 12 must precede Step 4
  (:durative-action do_step4
     :parameters ()
     :duration (= ?duration 2700)
     :condition (and (at start (step4_pending)) (at start (step6_done)) (at start (step12_done)))
     :effect (and (at start (not (step4_pending))) (at end (step4_done))))

  ;; Step 5: Research local venue options (10800s)
  (:durative-action do_step5
     :parameters ()
     :duration (= ?duration 10800)
     :condition (at start (step5_pending))
     :effect (and (at start (not (step5_pending))) (at end (step5_done))))

  ;; Step 6: Book the community hall (1200s)
  ;; Predecessor: Step 5 must precede Step 6
  (:durative-action do_step6
     :parameters ()
     :duration (= ?duration 1200)
     :condition (and (at start (step6_pending)) (at start (step5_done)))
     :effect (and (at start (not (step6_pending))) (at end (step6_done))))

  ;; Step 7: Create a preliminary budget (3600s)
  ;; Predecessor: Step 8 must precede Step 7
  (:durative-action do_step7
     :parameters ()
     :duration (= ?duration 3600)
     :condition (and (at start (step7_pending)) (at start (step8_done)))
     :effect (and (at start (not (step7_pending))) (at end (step7_done))))

  ;; Step 8: Draft a rough schedule of events (1800s)
  ;; Predecessor: Step 9 must precede Step 8
  (:durative-action do_step8
     :parameters ()
     :duration (= ?duration 1800)
     :condition (and (at start (step8_pending)) (at start (step9_done)))
     :effect (and (at start (not (step8_pending))) (at end (step8_done))))

  ;; Step 9: Brainstorm party games and activities (5400s)
  ;; Predecessor: Step 10 must precede Step 9
  (:durative-action do_step9
     :parameters ()
     :duration (= ?duration 5400)
     :condition (and (at start (step9_pending)) (at start (step10_done)))
     :effect (and (at start (not (step9_pending))) (at end (step9_done))))

  ;; Step 10: Select a date and time (900s)
  ;; Predecessor: Step 1 must precede Step 10
  (:durative-action do_step10
     :parameters ()
     :duration (= ?duration 900)
     :condition (and (at start (step10_pending)) (at start (step1_done)))
     :effect (and (at start (not (step10_pending))) (at end (step10_done))))

  ;; Step 11: Survey close friends for availability (172800s)
  ;; No predecessors
  (:durative-action do_step11
     :parameters ()
     :duration (= ?duration 172800)
     :condition (at start (step11_pending))
     :effect (and (at start (not (step11_pending))) (at end (step11_done))))

  ;; Step 12: Calculate the estimated cost per person (2400s)
  ;; Predecessor: Step 7 must precede Step 12
  (:durative-action do_step12
     :parameters ()
     :duration (= ?duration 2400)
     :condition (and (at start (step12_pending)) (at start (step7_done)))
     :effect (and (at start (not (step12_pending))) (at end (step12_done))))

  ;; Step 13: Set up the decorations and food (14400s)
  ;; Predecessor: Step 3 must precede Step 13
  (:durative-action do_step13
     :parameters ()
     :duration (= ?duration 14400)
     :condition (and (at start (step13_pending)) (at start (step3_done)))
     :effect (and (at start (not (step13_pending))) (at end (step13_done))))

  ;; Step 14: Confirm RSVPs with attendees (86400s)
  ;; Predecessor: Step 15 must precede Step 14
  (:durative-action do_step14
     :parameters ()
     :duration (= ?duration 86400)
     :condition (and (at start (step14_pending)) (at start (step15_done)))
     :effect (and (at start (not (step14_pending))) (at end (step14_done))))

  ;; Step 15: Wait for guests to respond to invitations (1 week = 604800s)
  ;; Predecessor: Step 2 must precede Step 15
  (:durative-action do_step15
     :parameters ()
     :duration (= ?duration 604800)
     :condition (and (at start (step15_pending)) (at start (step2_done)))
     :effect (and (at start (not (step15_pending))) (at end (step15_done))))
)
