(define (domain italian-food-improvement)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step)
    (machine_purchased)
    (sauce_history_researched)
    (orecchiette_practiced)
    (course_enrolled)
    (dinner_party_hosted)
    (ragu_mastered)
    (farm_visited)
    (herbs_module_completed)
    (carbonara_perfected)
    (cookbook_written)
    (wine_workshop_attended)
    (competition_entered)
    (magazine_subscribed)
    (trattoria_shift_volunteered)
    (dishes_documented)
    (herb_garden_built)
    (flour_chemistry_learned)
    (oven_calibrated)
    (encyclopedia_bought)
    (documentary_watched)
  )

  (:durative-action purchase_machine
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (herb_garden_built)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (machine_purchased))))

  (:durative-action research_sauce_history
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (encyclopedia_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sauce_history_researched))))

  (:durative-action practice_orecchiette
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (orecchiette_practiced))))

  (:durative-action enroll_culinary_course
    :parameters (?s - step)
    :duration (= ?duration 3628800)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (course_enrolled))))

  (:durative-action host_dinner_party
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (farm_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dinner_party_hosted))))

  (:durative-action master_ragu
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (sauce_history_researched)) (at start (herbs_module_completed)) (at start (oven_calibrated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ragu_mastered))))

  (:durative-action visit_farm
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (farm_visited))))

  (:durative-action complete_herbs_module
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (course_enrolled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (herbs_module_completed))))

  (:durative-action perfect_carbonara
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (course_enrolled)) (at start (documentary_watched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (carbonara_perfected))))

  (:durative-action write_cookbook
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (dishes_documented)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cookbook_written))))

  (:durative-action attend_wine_workshop
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (herbs_module_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wine_workshop_attended))))

  (:durative-action enter_competition
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (herbs_module_completed)) (at start (carbonara_perfected)) (at start (magazine_subscribed)) (at start (flour_chemistry_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (competition_entered))))

  (:durative-action subscribe_magazine
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (sauce_history_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (magazine_subscribed))))

  (:durative-action volunteer_trattoria
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (orecchiette_practiced)) (at start (wine_workshop_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trattoria_shift_volunteered))))

  (:durative-action document_dishes
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dishes_documented))))

  (:durative-action build_herb_garden
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (farm_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (herb_garden_built))))

  (:durative-action learn_flour_chemistry
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (course_enrolled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flour_chemistry_learned))))

  (:durative-action calibrate_oven
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (machine_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_calibrated))))

  (:durative-action buy_encyclopedia
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (encyclopedia_bought))))

  (:durative-action watch_documentary
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (magazine_subscribed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (documentary_watched))))
)