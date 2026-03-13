(define (domain rhubarb-preparation)
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

  ;; Step 1: Chop the rhubarb stalks into one-inch pieces (600s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step1_pending)) (at start (step4_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  ;; Step 2: Let the cooked rhubarb cool to room temperature (2700s)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step2_pending)) (at start (step11_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  ;; Step 3: Toss the rhubarb with sugar and cornstarch (300s)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step3_pending)) (at start (step1_done)) (at start (step6_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  ;; Step 4: Wash and trim the leaves off the rhubarb (900s)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step4_pending)) (at start (step14_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  ;; Step 5: Preheat the oven to 375 degrees (1200s)
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  ;; Step 6: Zest a fresh lemon (120s)
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step6_pending)) (at start (step9_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  ;; Step 7: Serve the rhubarb with a dollop of whipped cream (120s)
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step7_pending)) (at start (step13_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  ;; Step 8: Harvest the fresh rhubarb from the garden (1800s)
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step8_pending))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  ;; Step 9: Sterilize the baking dish (900s)
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step9_pending)) (at start (step14_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  ;; Step 10: Spread the rhubarb mixture into the dish (300s)
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step10_pending)) (at start (step3_done)) (at start (step12_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  ;; Step 11: Bake the rhubarb until bubbly and tender (2400s)
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step11_pending)) (at start (step10_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  ;; Step 12: Butter the inside of the baking dish (180s)
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step12_pending)) (at start (step5_done)) (at start (step9_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  ;; Step 13: Whip the heavy cream into stiff peaks (480s)
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (step13_pending))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  ;; Step 14: Rinse the dirt off the harvested stalks (300s)
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step14_pending)) (at start (step8_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  ;; Step 15: Transfer the cooled rhubarb to a serving bowl (60s)
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step15_pending)) (at start (step2_done)) (at start (step11_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )
)
