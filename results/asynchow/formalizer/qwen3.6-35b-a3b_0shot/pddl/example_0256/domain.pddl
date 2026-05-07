(define (domain lose_upper_body_fat)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_done ?s - step) (step_pending ?s - step)
               (chinups_done) (dumbbell_row_done) (rear_delt_raise_done) 
               (exercises_chosen_done) (upper_body_fat_lost))
  
  (:durative-action do_chinups
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step1)) (at start (exercises_chosen_done)))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (chinups_done))))

  (:durative-action do_dumbbell_row
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (exercises_chosen_done)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (dumbbell_row_done))))

  (:durative-action do_rear_delt_raise
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (exercises_chosen_done)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (rear_delt_raise_done))))

  (:durative-action do_choose_exercises
    :duration (= ?duration 1200)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (exercises_chosen_done))
                 (at end (upper_body_fat_lost))))
)