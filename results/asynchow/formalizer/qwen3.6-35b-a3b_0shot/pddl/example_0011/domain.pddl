(define (domain dog_ownership)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (search_done)
    (drive_done)
    (look_done)
    (pick_done)
    (paperwork_done)
    (supplies_done)
    (food_done))
  (:durative-action search_pet_stores
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (search_done))))
  (:durative-action drive_to_store
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (search_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (drive_done))))
  (:durative-action look_at_dogs
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (drive_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (look_done))))
  (:durative-action pick_dog
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (look_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (pick_done))))
  (:durative-action fill_paperwork
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (pick_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (paperwork_done))))
  (:durative-action shop_supplies
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (paperwork_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (supplies_done))))
  (:durative-action shop_food
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (paperwork_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (food_done))))
)