(define (domain crazy-balloon)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (launched)
    (researched_laws)
    (helium_purchased)
    (balloon_filled)
    (camera_attached)
    (parachute_designed)
    (descent_rigged)
    (gps_programmed)
    (housing_ordered)
    (waiver_secured)
  )

  ;; Step 1: Launch the experimental weather balloon (1800s)
  (:durative-action do_step1
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step1)) (at start (waiver_secured)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (launched))))

  ;; Step 2: Research local laws (172800s)
  (:durative-action do_step2
    :duration (= ?duration 172800)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (researched_laws))))

  ;; Step 3: Purchase helium tank (14400s)
  (:durative-action do_step3
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step3)) (at start (researched_laws)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (helium_purchased))))

  ;; Step 4: Fill the balloon (3600s)
  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (helium_purchased)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (balloon_filled))))

  ;; Step 5: Attach camera rig (2700s)
  (:durative-action do_step5
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step5)) (at start (gps_programmed)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (camera_attached))))

  ;; Step 6: Design parachute (18000s)
  (:durative-action do_step6
    :duration (= ?duration 18000)
    :condition (at start (step_pending step6))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (parachute_designed))))

  ;; Step 7: Rig emergency descent cord (7200s)
  (:durative-action do_step7
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step7)) (at start (parachute_designed)) (at start (housing_ordered)))
    :effect (and
              (at start (not (step_pending step7)))
              (at end (step_done step7))
              (at end (descent_rigged))))

  ;; Step 8: Program GPS module (10800s)
  (:durative-action do_step8
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step8)) (at start (researched_laws)))
    :effect (and
              (at start (not (step_pending step8)))
              (at end (step_done step8))
              (at end (gps_programmed))))

  ;; Step 9: Order waterproof housing (432000s)
  (:durative-action do_step9
    :duration (= ?duration 432000)
    :condition (at start (step_pending step9))
    :effect (and
              (at start (not (step_pending step9)))
              (at end (step_done step9))
              (at end (housing_ordered))))

  ;; Step 10: Secure FAA flight waiver (604800s = 1 week)
  (:durative-action do_step10
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step10)) (at start (balloon_filled)))
    :effect (and
              (at start (not (step_pending step10)))
              (at end (step_done step10))
              (at end (waiver_secured))))
)
