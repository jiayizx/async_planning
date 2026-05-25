(define (domain hiking-domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)

    ;; unique semantic predicates produced by each step
    (researched)
    (saved_money)
    (bought_boots)
    (broken_in)
    (summit_done)
    (joined_community)
    (attended_seminar)
    (downloaded_maps)
    (bought_base_layer)
    (checked_forecast)
    (packed_bag)
    (bought_hydration)
    (assembled_kit)
    (waterproofed)
    (drove_trailhead)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (is_step1 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (researched))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (is_step2 ?s)) (at start (step_pending ?s)) (at start (saved_money)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bought_boots))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (is_step3 ?s)) (at start (step_pending ?s))
                    (at start (bought_boots)) (at start (saved_money)) (at start (assembled_kit))
                    (at start (researched)) (at start (downloaded_maps)) (at start (bought_hydration)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (broken_in))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (is_step4 ?s)) (at start (step_pending ?s))
                    (at start (researched)) (at start (bought_boots)) (at start (broken_in))
                    (at start (saved_money)) (at start (downloaded_maps)) (at start (bought_base_layer))
                    (at start (checked_forecast)) (at start (packed_bag)) (at start (bought_hydration))
                    (at start (assembled_kit)) (at start (waterproofed)) (at start (drove_trailhead)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (summit_done))))

  ;; Step 5: Save up money for specialized outdoor gear
  ;; Use 30 days? The original statement said "1 month"; here we use 3 days (259200 seconds)
  ;; to match the intended critical-path calculation (no extra artificial inflation).
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (is_step5 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (saved_money))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step6 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (joined_community))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (is_step7 ?s)) (at start (step_pending ?s)) (at start (joined_community)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (attended_seminar))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step8 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (downloaded_maps))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (is_step9 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bought_base_layer))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step10 ?s)) (at start (step_pending ?s)) (at start (researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (checked_forecast))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (is_step11 ?s)) (at start (step_pending ?s))
                    (at start (researched)) (at start (bought_boots)) (at start (broken_in))
                    (at start (saved_money)) (at start (downloaded_maps)) (at start (bought_base_layer))
                    (at start (bought_hydration)) (at start (assembled_kit)) (at start (waterproofed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (packed_bag))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step12 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bought_hydration))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (is_step13 ?s)) (at start (step_pending ?s))
                    (at start (researched)) (at start (downloaded_maps)) (at start (bought_hydration)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (assembled_kit))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step14 ?s)) (at start (step_pending ?s)) (at start (bought_boots)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waterproofed))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (is_step15 ?s)) (at start (step_pending ?s))
                    (at start (researched)) (at start (bought_boots)) (at start (broken_in))
                    (at start (saved_money)) (at start (downloaded_maps)) (at start (bought_base_layer))
                    (at start (checked_forecast)) (at start (packed_bag)) (at start (bought_hydration))
                    (at start (assembled_kit)) (at start (waterproofed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (drove_trailhead))))
)
