(define (domain solve-system-of-equations)
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
    (problem_statement_read)
    (solution_set_written)
    (variables_checked)
    (second_variable_solved)
    (first_variable_isolated)
    (coefficients_identified)
    (elimination_method_chosen)
    (fractions_cleared)
    (common_factor_applied)
    (first_variable_substituted)
    (equations_standardized)
    (intersection_verified)
    (equations_labeled)
    (variable_eliminated)
    (first_variable_arithmetic_verified)
  )

  (:durative-action read_problem_statement
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (problem_statement_read))))

  (:durative-action write_final_solution_set
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (problem_statement_read))
      (at start (first_variable_isolated))
      (at start (common_factor_applied))
      (at start (first_variable_substituted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (solution_set_written))))

  (:durative-action check_variables
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (variable_eliminated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (variables_checked))))

  (:durative-action solve_second_variable
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (first_variable_arithmetic_verified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (second_variable_solved))))

  (:durative-action isolate_first_variable
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (coefficients_identified))
      (at start (elimination_method_chosen))
      (at start (equations_standardized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (first_variable_isolated))))

  (:durative-action identify_coefficients
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (coefficients_identified))))

  (:durative-action choose_elimination_method
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (problem_statement_read)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (elimination_method_chosen))))

  (:durative-action clear_fractions
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (equations_labeled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fractions_cleared))))

  (:durative-action multiply_by_common_factor
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (equations_standardized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (common_factor_applied))))

  (:durative-action substitute_first_variable
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (second_variable_solved)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (first_variable_substituted))))

  (:durative-action write_standard_form
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (equations_standardized))))

  (:durative-action graph_equations
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (first_variable_substituted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (intersection_verified))))

  (:durative-action label_equations
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (problem_statement_read)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (equations_labeled))))

  (:durative-action eliminate_variable
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (equations_standardized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (variable_eliminated))))

  (:durative-action verify_first_variable_arithmetic
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (variables_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (first_variable_arithmetic_verified))))
)