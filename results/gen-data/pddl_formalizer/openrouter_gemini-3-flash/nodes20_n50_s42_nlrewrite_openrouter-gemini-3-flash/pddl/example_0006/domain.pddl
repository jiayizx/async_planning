(define (domain seasoning_steak)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (steak_out)
    (spices_gathered)
    (counter_clean)
    (meat_on_board)
    (meat_dry)
    (knife_sharp)
    (pepper_ground)
    (pepper_rubbed)
    (salt_measured)
    (salt_sprinkled)
    (meat_rested)
    (garlic_minced)
    (rosemary_chopped)
    (salt_mixed)
    (silver_skin_trimmed)
    (herbs_pressed)
    (oil_prepared)
    (meat_brushed)
    (hands_washed)
    (garlic_rubbed)
  )

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (steak_out)))
  )

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spices_gathered)))
  )

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (counter_clean)))
  )

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (spices_gathered)) (at start (counter_clean)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_on_board)))
  )

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (spices_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_dry)))
  )

  (:durative-action step6
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knife_sharp)))
  )

  (:durative-action step7
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (spices_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pepper_ground)))
  )

  (:durative-action step8
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (pepper_ground)) (at start (meat_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pepper_rubbed)))
  )

  (:durative-action step9
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (salt_measured)))
  )

  (:durative-action step10
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (pepper_ground)) (at start (rosemary_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (salt_sprinkled)))
  )

  (:durative-action step11
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (oil_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_rested)))
  )

  (:durative-action step12
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garlic_minced)))
  )

  (:durative-action step13
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (hands_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rosemary_chopped)))
  )

  (:durative-action step14
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (salt_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (salt_mixed)))
  )

  (:durative-action step15
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (steak_out)) (at start (knife_sharp)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (silver_skin_trimmed)))
  )

  (:durative-action step16
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (pepper_ground)) (at start (rosemary_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (herbs_pressed)))
  )

  (:durative-action step17
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (salt_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_prepared)))
  )

  (:durative-action step18
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (meat_on_board)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_brushed)))
  )

  (:durative-action step19
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (meat_dry)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hands_washed)))
  )

  (:durative-action step20
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (salt_measured)) (at start (garlic_minced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garlic_rubbed)))
  )
)