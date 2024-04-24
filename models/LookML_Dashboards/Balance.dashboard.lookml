---
- dashboard: balance_dashboard
  title: Balance Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: fN5dQBXhegRhvLHsRDXUjv
  elements:
  - title: Level Balance Report
    name: Level Balance Report
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_level_at, unique_start, total_start, win_count, total_lose_move,
      total_lose_zone, total_lose_quit, total_lose_all, remaining_time_sec, avg_moves_made]
    filters: {}
    sorts: [progression.user_level_at]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total Start
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_start
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
    - category: measure
      expression:
      label: Unique Start
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: unique_start
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
    - category: measure
      expression:
      label: Total Lose (Move)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_move
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: OutOfMove
    - category: measure
      expression:
      label: Total Lose (Zone)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_zone
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: OutOfZone
    - category: measure
      expression:
      label: Total Lose (Quit)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_quit
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: Quit
    - category: measure
      expression:
      label: Total Lose (All)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_all
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: win_count
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: table_calculation
      expression: "${win_count}/${total_start}"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
      _type_hint: number
    - category: table_calculation
      expression: "${win_count}/(${total_lose_all}+${win_count})"
      label: Win Rate (w/kills)
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate_wkills
      _type_hint: number
    - category: table_calculation
      expression: "${total_start}-${win_count}-${total_lose_all}"
      label: App Kills
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: app_kills
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${win_count})/${unique_start}"
      label: Churn InGame
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_ingame
      _type_hint: number
    - category: table_calculation
      expression: offset(${unique_start},1)
      label: UniqueStart1
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: uniquestart1
      _type_hint: number
    - category: table_calculation
      expression: "(${win_count}-${uniquestart1})/${win_count}"
      label: Churn Between
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_between
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${uniquestart1})/${unique_start}"
      label: Churn Total
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_total
      _type_hint: number
    - category: table_calculation
      expression: "${churn_total}*${unique_start}"
      label: Churn Count
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: churn_count
      _type_hint: number
    - measure: average_of_moves_made
      based_on: progression.move_count
      expression: ''
      label: Average of Moves Made
      type: average
      _kind_hint: measure
      _type_hint: number
    - category: measure
      expression: ''
      label: Remaining Time (sec)
      value_format:
      value_format_name: decimal_1
      based_on: progression.time_remain
      _kind_hint: measure
      measure: remaining_time_sec
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Avg Moves Made
      value_format:
      value_format_name: decimal_1
      based_on: progression.move_count
      _kind_hint: measure
      measure: avg_moves_made
      type: average
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      progression.user_level_at: Level No
    series_cell_visualizations:
      unique_start:
        is_active: false
    series_text_format:
      progression.user_level_at:
        align: center
      unique_start:
        align: center
      total_start:
        align: center
      total_lose_move:
        align: center
      total_lose_quit:
        align: center
      total_lose_zone:
        align: center
      win_rate:
        align: center
      total_lose_all:
        align: center
      win_rate_wkills:
        align: center
      app_kills:
        align: center
      churn_ingame:
        align: center
      churn_between:
        align: center
      churn_total:
        align: center
      churn_count:
        align: center
      avg_moves_made:
        align: center
      remaining_time_sec:
        align: center
      win_count:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [win_rate]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [win_rate_wkills]}, {type: along a scale...,
        value: !!null '', background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: true, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_ingame]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_between]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4620e8de-df7a-40e0-89d6-7401f6e64d96,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_total]}]
    hidden_pivots: {}
    hidden_fields: [uniquestart1]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    column_order: [progression.user_level_at, unique_start, total_start, win_count,
      total_lose_move, total_lose_zone, total_lose_quit, total_lose_all, app_kills,
      win_rate, win_rate_wkills, churn_count, churn_ingame, churn_between, churn_total,
      remaining_time_sec, avg_moves_made]
    listen:
      Campaign: raw_pdt.campaign
      Adgroup: raw_pdt.adgroup
      Country: raw_pdt.country
      Creative: raw_pdt.creative
      Installed Date: progression.installed_date
      Install Day of User: progression.install_day_of_user
      Level No: progression.user_level_at
      Client Date: progression.event_timestamp_date
      Partner: raw_pdt.network
      App Version: raw_pdt.app_version
    row: 0
    col: 0
    width: 24
    height: 12
  - title: Win Rate Report (Table)
    name: Win Rate Report (Table)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_level_at, unique_start, total_start, win_count, total_lose_move,
      total_lose_zone, total_lose_quit, total_lose_all, remaining_time_sec, avg_moves_made]
    filters:
      progression.fail_type: ''
      progression.event_name: ''
    sorts: [progression.user_level_at]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total Start
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_start
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
    - category: measure
      expression:
      label: Unique Start
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: unique_start
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
    - category: measure
      expression:
      label: Total Lose (Move)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_move
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: OutOfMove
    - category: measure
      expression:
      label: Total Lose (Zone)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_zone
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: OutOfZone
    - category: measure
      expression:
      label: Total Lose (Quit)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_quit
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: Quit
    - category: measure
      expression:
      label: Total Lose (All)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_all
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: win_count
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: table_calculation
      expression: "${win_count}/${total_start}"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
      _type_hint: number
    - category: table_calculation
      expression: "${win_count}/(${total_lose_all}+${win_count})"
      label: Win Rate (w/kills)
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate_wkills
      _type_hint: number
    - category: table_calculation
      expression: "${total_start}-${win_count}-${total_lose_all}"
      label: App Kills
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: app_kills
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${win_count})/${unique_start}"
      label: Churn InGame
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_ingame
      _type_hint: number
    - category: table_calculation
      expression: offset(${unique_start},1)
      label: UniqueStart1
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: uniquestart1
      _type_hint: number
    - category: table_calculation
      expression: "(${win_count}-${uniquestart1})/${win_count}"
      label: Churn Between
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_between
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${uniquestart1})/${unique_start}"
      label: Churn Total
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_total
      _type_hint: number
    - category: table_calculation
      expression: "${churn_total}*${unique_start}"
      label: Churn Count
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: churn_count
      _type_hint: number
    - measure: average_of_moves_made
      based_on: progression.move_count
      expression: ''
      label: Average of Moves Made
      type: average
      _kind_hint: measure
      _type_hint: number
    - category: measure
      expression: ''
      label: Remaining Time (sec)
      value_format:
      value_format_name: decimal_1
      based_on: progression.time_remain
      _kind_hint: measure
      measure: remaining_time_sec
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Avg Moves Made
      value_format:
      value_format_name: decimal_1
      based_on: progression.move_count
      _kind_hint: measure
      measure: avg_moves_made
      type: average
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      progression.user_level_at: Level No
    series_cell_visualizations:
      unique_start:
        is_active: false
    series_text_format:
      progression.user_level_at:
        align: center
      unique_start:
        align: center
      total_start:
        align: center
      total_lose_move:
        align: center
      total_lose_quit:
        align: center
      total_lose_zone:
        align: center
      win_rate:
        align: center
      total_lose_all:
        align: center
      win_rate_wkills:
        align: center
      app_kills:
        align: center
      churn_ingame:
        align: center
      churn_between:
        align: center
      churn_total:
        align: center
      churn_count:
        align: center
      avg_moves_made:
        align: center
      remaining_time_sec:
        align: center
      win_count:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [win_rate]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [win_rate_wkills]}, {type: along a scale...,
        value: !!null '', background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: true, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_ingame]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_between]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4620e8de-df7a-40e0-89d6-7401f6e64d96,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_total]}]
    hidden_pivots: {}
    hidden_fields: [uniquestart1, churn_count, churn_total, churn_between, churn_ingame,
      app_kills, avg_moves_made, remaining_time_sec, total_lose_all, total_lose_quit,
      total_lose_zone, total_lose_move]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    column_order: [progression.user_level_at, unique_start, total_start, win_count,
      total_lose_move, total_lose_zone, total_lose_quit, total_lose_all, app_kills,
      win_rate, win_rate_wkills, churn_count, churn_ingame, churn_between, churn_total,
      remaining_time_sec, avg_moves_made]
    listen:
      Level No: progression.user_level_at
      Client Date: progression.event_timestamp_date
      Installed Date: progression.installed_date
      Install Day of User: progression.install_day_of_user
      App Version: raw_pdt.app_version
    row: 12
    col: 0
    width: 24
    height: 9
  - title: Win Rate Report (Graph)
    name: Win Rate Report (Graph)
    model: tile_match
    explore: progression
    type: looker_line
    fields: [progression.user_level_at, unique_start, total_start, win_count, total_lose_move,
      total_lose_zone, total_lose_quit, total_lose_all, remaining_time_sec, avg_moves_made]
    filters:
      progression.fail_type: ''
      progression.event_name: ''
    sorts: [progression.user_level_at]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total Start
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_start
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
    - category: measure
      expression:
      label: Unique Start
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: unique_start
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
    - category: measure
      expression:
      label: Total Lose (Move)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_move
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: OutOfMove
    - category: measure
      expression:
      label: Total Lose (Zone)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_zone
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: OutOfZone
    - category: measure
      expression:
      label: Total Lose (Quit)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_quit
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: Quit
    - category: measure
      expression:
      label: Total Lose (All)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_all
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: win_count
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: table_calculation
      expression: "${win_count}/${total_start}"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
      _type_hint: number
    - category: table_calculation
      expression: "${win_count}/(${total_lose_all}+${win_count})"
      label: Win Rate (w/kills)
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate_wkills
      _type_hint: number
    - category: table_calculation
      expression: "${total_start}-${win_count}-${total_lose_all}"
      label: App Kills
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: app_kills
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${win_count})/${unique_start}"
      label: Churn InGame
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_ingame
      _type_hint: number
    - category: table_calculation
      expression: offset(${unique_start},1)
      label: UniqueStart1
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: uniquestart1
      _type_hint: number
    - category: table_calculation
      expression: "(${win_count}-${uniquestart1})/${win_count}"
      label: Churn Between
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_between
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${uniquestart1})/${unique_start}"
      label: Churn Total
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_total
      _type_hint: number
    - category: table_calculation
      expression: "${churn_total}*${unique_start}"
      label: Churn Count
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: churn_count
      _type_hint: number
    - measure: average_of_moves_made
      based_on: progression.move_count
      expression: ''
      label: Average of Moves Made
      type: average
      _kind_hint: measure
      _type_hint: number
    - category: measure
      expression: ''
      label: Remaining Time (sec)
      value_format:
      value_format_name: decimal_1
      based_on: progression.time_remain
      _kind_hint: measure
      measure: remaining_time_sec
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Avg Moves Made
      value_format:
      value_format_name: decimal_1
      based_on: progression.move_count
      _kind_hint: measure
      measure: avg_moves_made
      type: average
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    x_axis_label: Level No
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      progression.user_level_at: Level No
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      unique_start:
        is_active: false
    series_text_format:
      progression.user_level_at:
        align: center
      unique_start:
        align: center
      total_start:
        align: center
      total_lose_move:
        align: center
      total_lose_quit:
        align: center
      total_lose_zone:
        align: center
      win_rate:
        align: center
      total_lose_all:
        align: center
      win_rate_wkills:
        align: center
      app_kills:
        align: center
      churn_ingame:
        align: center
      churn_between:
        align: center
      churn_total:
        align: center
      churn_count:
        align: center
      avg_moves_made:
        align: center
      remaining_time_sec:
        align: center
      win_count:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [win_rate]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [win_rate_wkills]}, {type: along a scale...,
        value: !!null '', background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: true, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_ingame]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_between]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4620e8de-df7a-40e0-89d6-7401f6e64d96,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_total]}]
    hidden_pivots: {}
    hidden_fields: [uniquestart1, churn_count, churn_total, churn_between, churn_ingame,
      app_kills, avg_moves_made, remaining_time_sec, total_lose_all, total_lose_quit,
      total_lose_zone, total_lose_move, unique_start, total_start, win_count]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    column_order: [progression.user_level_at, unique_start, total_start, win_count,
      total_lose_move, total_lose_zone, total_lose_quit, total_lose_all, app_kills,
      win_rate, win_rate_wkills, churn_count, churn_ingame, churn_between, churn_total,
      remaining_time_sec, avg_moves_made]
    listen:
      Level No: progression.user_level_at
      Client Date: progression.event_timestamp_date
      Installed Date: progression.installed_date
      Install Day of User: progression.install_day_of_user
      App Version: raw_pdt.app_version
    row: 21
    col: 0
    width: 24
    height: 8
  - title: Churn Report (Table)
    name: Churn Report (Table)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_level_at, unique_start, total_start, win_count, total_lose_move,
      total_lose_zone, total_lose_quit, total_lose_all, remaining_time_sec, avg_moves_made]
    filters:
      progression.fail_type: ''
      progression.event_name: ''
    sorts: [progression.user_level_at]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total Start
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_start
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
    - category: measure
      expression:
      label: Unique Start
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: unique_start
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
    - category: measure
      expression:
      label: Total Lose (Move)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_move
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: OutOfMove
    - category: measure
      expression:
      label: Total Lose (Zone)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_zone
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: OutOfZone
    - category: measure
      expression:
      label: Total Lose (Quit)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_quit
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: Quit
    - category: measure
      expression:
      label: Total Lose (All)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_all
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: win_count
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: table_calculation
      expression: "${win_count}/${total_start}"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
      _type_hint: number
    - category: table_calculation
      expression: "${win_count}/(${total_lose_all}+${win_count})"
      label: Win Rate (w/kills)
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate_wkills
      _type_hint: number
    - category: table_calculation
      expression: "${total_start}-${win_count}-${total_lose_all}"
      label: App Kills
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: app_kills
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${win_count})/${unique_start}"
      label: Churn InGame
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_ingame
      _type_hint: number
    - category: table_calculation
      expression: offset(${unique_start},1)
      label: UniqueStart1
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: uniquestart1
      _type_hint: number
    - category: table_calculation
      expression: "(${win_count}-${uniquestart1})/${win_count}"
      label: Churn Between
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_between
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${uniquestart1})/${unique_start}"
      label: Churn Total
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_total
      _type_hint: number
    - category: table_calculation
      expression: "${churn_total}*${unique_start}"
      label: Churn Count
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: churn_count
      _type_hint: number
    - measure: average_of_moves_made
      based_on: progression.move_count
      expression: ''
      label: Average of Moves Made
      type: average
      _kind_hint: measure
      _type_hint: number
    - category: measure
      expression: ''
      label: Remaining Time (sec)
      value_format:
      value_format_name: decimal_1
      based_on: progression.time_remain
      _kind_hint: measure
      measure: remaining_time_sec
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Avg Moves Made
      value_format:
      value_format_name: decimal_1
      based_on: progression.move_count
      _kind_hint: measure
      measure: avg_moves_made
      type: average
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_label: Level No
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      progression.user_level_at: Level No
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      unique_start:
        is_active: false
    series_text_format:
      progression.user_level_at:
        align: center
      unique_start:
        align: center
      total_start:
        align: center
      total_lose_move:
        align: center
      total_lose_quit:
        align: center
      total_lose_zone:
        align: center
      win_rate:
        align: center
      total_lose_all:
        align: center
      win_rate_wkills:
        align: center
      app_kills:
        align: center
      churn_ingame:
        align: center
      churn_between:
        align: center
      churn_total:
        align: center
      churn_count:
        align: center
      avg_moves_made:
        align: center
      remaining_time_sec:
        align: center
      win_count:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [win_rate]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [win_rate_wkills]}, {type: along a scale...,
        value: !!null '', background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: true, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_ingame]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_between]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4620e8de-df7a-40e0-89d6-7401f6e64d96,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_total]}]
    hidden_pivots: {}
    hidden_fields: [uniquestart1, app_kills, avg_moves_made, remaining_time_sec, total_lose_all,
      total_lose_quit, total_lose_zone, total_lose_move, unique_start, total_start,
      win_count, win_rate, win_rate_wkills]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    column_order: [progression.user_level_at, unique_start, total_start, win_count,
      total_lose_move, total_lose_zone, total_lose_quit, total_lose_all, app_kills,
      win_rate, win_rate_wkills, churn_count, churn_ingame, churn_between, churn_total,
      remaining_time_sec, avg_moves_made]
    listen:
      Level No: progression.user_level_at
      Client Date: progression.event_timestamp_date
      Installed Date: progression.installed_date
      Install Day of User: progression.install_day_of_user
      App Version: raw_pdt.app_version
    row: 29
    col: 0
    width: 24
    height: 10
  - title: Churn Report (Graph)
    name: Churn Report (Graph)
    model: tile_match
    explore: progression
    type: looker_line
    fields: [progression.user_level_at, unique_start, total_start, win_count, total_lose_move,
      total_lose_zone, total_lose_quit, total_lose_all, remaining_time_sec, avg_moves_made]
    filters:
      progression.fail_type: ''
      progression.event_name: ''
    sorts: [progression.user_level_at]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total Start
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_start
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
    - category: measure
      expression:
      label: Unique Start
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: unique_start
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
    - category: measure
      expression:
      label: Total Lose (Move)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_move
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: OutOfMove
    - category: measure
      expression:
      label: Total Lose (Zone)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_zone
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: OutOfZone
    - category: measure
      expression:
      label: Total Lose (Quit)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_quit
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: Quit
    - category: measure
      expression:
      label: Total Lose (All)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_all
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: win_count
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: table_calculation
      expression: "${win_count}/${total_start}"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
      _type_hint: number
    - category: table_calculation
      expression: "${win_count}/(${total_lose_all}+${win_count})"
      label: Win Rate (w/kills)
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate_wkills
      _type_hint: number
    - category: table_calculation
      expression: "${total_start}-${win_count}-${total_lose_all}"
      label: App Kills
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: app_kills
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${win_count})/${unique_start}"
      label: Churn InGame
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_ingame
      _type_hint: number
    - category: table_calculation
      expression: offset(${unique_start},1)
      label: UniqueStart1
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: uniquestart1
      _type_hint: number
    - category: table_calculation
      expression: "(${win_count}-${uniquestart1})/${win_count}"
      label: Churn Between
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_between
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${uniquestart1})/${unique_start}"
      label: Churn Total
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_total
      _type_hint: number
    - category: table_calculation
      expression: "${churn_total}*${unique_start}"
      label: Churn Count
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: churn_count
      _type_hint: number
    - measure: average_of_moves_made
      based_on: progression.move_count
      expression: ''
      label: Average of Moves Made
      type: average
      _kind_hint: measure
      _type_hint: number
    - category: measure
      expression: ''
      label: Remaining Time (sec)
      value_format:
      value_format_name: decimal_1
      based_on: progression.time_remain
      _kind_hint: measure
      measure: remaining_time_sec
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Avg Moves Made
      value_format:
      value_format_name: decimal_1
      based_on: progression.move_count
      _kind_hint: measure
      measure: avg_moves_made
      type: average
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: churn_ingame, id: churn_ingame,
            name: Churn InGame}, {axisId: churn_between, id: churn_between, name: Churn
              Between}, {axisId: churn_total, id: churn_total, name: Churn Total},
          {axisId: churn_count, id: churn_count, name: Churn Count}], showLabels: true,
        showValues: true, valueFormat: ".0%", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Level No
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [churn_count]
    series_labels:
      progression.user_level_at: Level No
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      unique_start:
        is_active: false
    series_text_format:
      progression.user_level_at:
        align: center
      unique_start:
        align: center
      total_start:
        align: center
      total_lose_move:
        align: center
      total_lose_quit:
        align: center
      total_lose_zone:
        align: center
      win_rate:
        align: center
      total_lose_all:
        align: center
      win_rate_wkills:
        align: center
      app_kills:
        align: center
      churn_ingame:
        align: center
      churn_between:
        align: center
      churn_total:
        align: center
      churn_count:
        align: center
      avg_moves_made:
        align: center
      remaining_time_sec:
        align: center
      win_count:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [win_rate]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [win_rate_wkills]}, {type: along a scale...,
        value: !!null '', background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: true, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_ingame]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_between]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4620e8de-df7a-40e0-89d6-7401f6e64d96,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_total]}]
    hidden_pivots: {}
    hidden_fields: [uniquestart1, app_kills, avg_moves_made, remaining_time_sec, total_lose_all,
      total_lose_quit, total_lose_zone, total_lose_move, unique_start, total_start,
      win_count, win_rate, win_rate_wkills]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    column_order: [progression.user_level_at, unique_start, total_start, win_count,
      total_lose_move, total_lose_zone, total_lose_quit, total_lose_all, app_kills,
      win_rate, win_rate_wkills, churn_count, churn_ingame, churn_between, churn_total,
      remaining_time_sec, avg_moves_made]
    listen:
      Level No: progression.user_level_at
      Client Date: progression.event_timestamp_date
      Installed Date: progression.installed_date
      Install Day of User: progression.install_day_of_user
      App Version: raw_pdt.app_version
    row: 39
    col: 0
    width: 24
    height: 11
  - title: Level Retention
    name: Level Retention
    model: tile_match
    explore: progression
    type: looker_line
    fields: [progression.user_level_at, unique_start, total_start, win_count, total_lose_move,
      total_lose_zone, total_lose_quit, total_lose_all, remaining_time_sec, avg_moves_made]
    filters:
      progression.fail_type: ''
      progression.event_name: ''
    sorts: [progression.user_level_at]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total Start
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_start
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
    - category: measure
      expression:
      label: Unique Start
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: unique_start
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
    - category: measure
      expression:
      label: Total Lose (Move)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_move
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: OutOfMove
    - category: measure
      expression:
      label: Total Lose (Zone)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_zone
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: OutOfZone
    - category: measure
      expression:
      label: Total Lose (Quit)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_quit
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: Quit
    - category: measure
      expression:
      label: Total Lose (All)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_all
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: win_count
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: table_calculation
      expression: "${win_count}/${total_start}"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
      _type_hint: number
    - category: table_calculation
      expression: "${win_count}/(${total_lose_all}+${win_count})"
      label: Win Rate (w/kills)
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate_wkills
      _type_hint: number
    - category: table_calculation
      expression: "${total_start}-${win_count}-${total_lose_all}"
      label: App Kills
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: app_kills
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${win_count})/${unique_start}"
      label: Churn InGame
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_ingame
      _type_hint: number
    - category: table_calculation
      expression: offset(${unique_start},1)
      label: UniqueStart1
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: uniquestart1
      _type_hint: number
    - category: table_calculation
      expression: "(${win_count}-${uniquestart1})/${win_count}"
      label: Churn Between
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_between
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${uniquestart1})/${unique_start}"
      label: Churn Total
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: churn_total
      _type_hint: number
    - category: table_calculation
      expression: "${churn_total}*${unique_start}"
      label: Churn Count
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: churn_count
      _type_hint: number
    - measure: average_of_moves_made
      based_on: progression.move_count
      expression: ''
      label: Average of Moves Made
      type: average
      _kind_hint: measure
      _type_hint: number
    - category: measure
      expression: ''
      label: Remaining Time (sec)
      value_format:
      value_format_name: decimal_1
      based_on: progression.time_remain
      _kind_hint: measure
      measure: remaining_time_sec
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Avg Moves Made
      value_format:
      value_format_name: decimal_1
      based_on: progression.move_count
      _kind_hint: measure
      measure: avg_moves_made
      type: average
      _type_hint: number
    - category: table_calculation
      expression: running_product(1-${churn_total})
      label: Level Retention
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_retention
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_label: Level No
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      progression.user_level_at: Level No
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      unique_start:
        is_active: false
    series_text_format:
      progression.user_level_at:
        align: center
      unique_start:
        align: center
      total_start:
        align: center
      total_lose_move:
        align: center
      total_lose_quit:
        align: center
      total_lose_zone:
        align: center
      win_rate:
        align: center
      total_lose_all:
        align: center
      win_rate_wkills:
        align: center
      app_kills:
        align: center
      churn_ingame:
        align: center
      churn_between:
        align: center
      churn_total:
        align: center
      churn_count:
        align: center
      avg_moves_made:
        align: center
      remaining_time_sec:
        align: center
      win_count:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [win_rate]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [win_rate_wkills]}, {type: along a scale...,
        value: !!null '', background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: true, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_ingame]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_between]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4620e8de-df7a-40e0-89d6-7401f6e64d96,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [churn_total]}]
    hidden_pivots: {}
    hidden_fields: [uniquestart1, app_kills, avg_moves_made, remaining_time_sec, total_lose_all,
      total_lose_quit, total_lose_zone, total_lose_move, unique_start, total_start,
      win_count, win_rate, win_rate_wkills, churn_count, churn_total, churn_between,
      churn_ingame]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    column_order: [progression.user_level_at, unique_start, total_start, win_count,
      total_lose_move, total_lose_zone, total_lose_quit, total_lose_all, app_kills,
      win_rate, win_rate_wkills, churn_count, churn_ingame, churn_between, churn_total,
      remaining_time_sec, avg_moves_made]
    hidden_series: [churn_count]
    listen:
      Level No: progression.user_level_at
      Client Date: progression.event_timestamp_date
      Installed Date: progression.installed_date
      Install Day of User: progression.install_day_of_user
      App Version: raw_pdt.app_version
    row: 50
    col: 0
    width: 24
    height: 11
  filters:
  - name: Installed Date
    title: Installed Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
    model: tile_match
    explore: progression
    listens_to_filters: []
    field: progression.installed_date
  - name: Client Date
    title: Client Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tile_match
    explore: progression
    listens_to_filters: []
    field: progression.event_timestamp_date
  - name: Install Day of User
    title: Install Day of User
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
    model: tile_match
    explore: progression
    listens_to_filters: []
    field: progression.install_day_of_user
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: progression
    listens_to_filters: []
    field: raw_pdt.country
  - name: App Version
    title: App Version
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: progression
    listens_to_filters: []
    field: raw_pdt.app_version
  - name: Partner
    title: Partner
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: progression
    listens_to_filters: []
    field: raw_pdt.network
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: progression
    listens_to_filters: []
    field: raw_pdt.campaign
  - name: Adgroup
    title: Adgroup
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: progression
    listens_to_filters: []
    field: raw_pdt.adgroup
  - name: Creative
    title: Creative
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: progression
    listens_to_filters: []
    field: raw_pdt.creative
  - name: Level No
    title: Level No
    type: field_filter
    default_value: "[1,50]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tile_match
    explore: progression
    listens_to_filters: []
    field: progression.user_level_at
