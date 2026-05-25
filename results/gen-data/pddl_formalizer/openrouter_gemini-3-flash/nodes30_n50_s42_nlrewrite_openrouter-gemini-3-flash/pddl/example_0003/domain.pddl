(define (domain break_even_analysis)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (data_gathered)
    (overhead_identified)
    (sales_reports_downloaded)
    (printer_calibrated)
    (competitor_analyzed)
    (costs_categorized)
    (avg_var_cost_calculated)
    (max_var_cost_calculated)
    (fixed_costs_calculated)
    (fixed_costs_summed)
    (fixed_costs_verified)
    (market_researched)
    (price_set)
    (seasonal_analyzed)
    (be_units_calculated)
    (be_dollars_calculated)
    (be_formula_verified)
    (be_ratio_calculated)
    (margin_determined)
    (invoices_cross_referenced)
    (data_inputted)
    (cells_formatted)
    (scatter_plot_generated)
    (axes_adjusted)
    (labels_added)
    (lines_plotted)
    (graph_reviewed)
    (summary_written)
    (hard_copy_printed)
    (pdf_saved)
  )

  (:durative-action gather_data
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (data_gathered)))
  )

  (:durative-action identify_overhead
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (overhead_identified)))
  )

  (:durative-action download_reports
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sales_reports_downloaded)))
  )

  (:durative-action calibrate_printer
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (printer_calibrated)))
  )

  (:durative-action analyze_competitor
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (competitor_analyzed)))
  )

  (:durative-action categorize_costs
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (data_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (costs_categorized)))
  )

  (:durative-action calc_avg_var_cost
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (data_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (avg_var_cost_calculated)))
  )

  (:durative-action calc_max_var_cost
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (data_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (max_var_cost_calculated)))
  )

  (:durative-action calc_fixed_costs
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (overhead_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fixed_costs_calculated)))
  )

  (:durative-action sum_fixed_costs
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (fixed_costs_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fixed_costs_summed)))
  )

  (:durative-action verify_fixed_sum
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (fixed_costs_summed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fixed_costs_verified)))
  )

  (:durative-action research_market
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (competitor_analyzed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (market_researched)))
  )

  (:durative-action set_price
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (market_researched)) (at start (competitor_analyzed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (price_set)))
  )

  (:durative-action analyze_seasonal
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (sales_reports_downloaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seasonal_analyzed)))
  )

  (:durative-action calc_be_units
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (fixed_costs_verified)) (at start (max_var_cost_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (be_units_calculated)))
  )

  (:durative-action calc_be_dollars
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (avg_var_cost_calculated)) (at start (seasonal_analyzed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (be_dollars_calculated)))
  )

  (:durative-action verify_formula
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (be_dollars_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (be_formula_verified)))
  )

  (:durative-action calc_be_ratio
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (be_units_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (be_ratio_calculated)))
  )

  (:durative-action determine_margin
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (fixed_costs_summed)) (at start (be_ratio_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (margin_determined)))
  )

  (:durative-action cross_reference_invoices
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (costs_categorized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (invoices_cross_referenced)))
  )

  (:durative-action input_data
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (invoices_cross_referenced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (data_inputted)))
  )

  (:durative-action format_cells
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (data_inputted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cells_formatted)))
  )

  (:durative-action generate_scatter_plot
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (data_inputted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scatter_plot_generated)))
  )

  (:durative-action adjust_axes
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (scatter_plot_generated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (axes_adjusted)))
  )

  (:durative-action add_labels
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (axes_adjusted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (labels_added)))
  )

  (:durative-action plot_lines
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (price_set)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lines_plotted)))
  )

  (:durative-action review_graph
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (printer_calibrated)) (at start (lines_plotted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (graph_reviewed)))
  )

  (:durative-action write_summary
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (sales_reports_downloaded)) (at start (data_inputted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (summary_written)))
  )

  (:durative-action print_hard_copy
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (data_inputted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hard_copy_printed)))
  )

  (:durative-action save_pdf
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (summary_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pdf_saved)))
  )
)