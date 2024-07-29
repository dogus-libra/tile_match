---
- dashboard: retention_dashboard
  title: Retention Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: JE4QFt79LX9kdsI2jNbtZL
  elements:
  - title: Retention Dashboard (Daily)
    name: Retention Dashboard (Daily)
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [users_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
      player_1, player_2, player_3, player_4, player_5, player_7, new_users, player_14,
      ret_14]
    fill_fields: [users_pdt.installed_date]
    filters: {}
    sorts: [users_pdt.installed_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${ret_1}/${player_1}"
      label: Retention 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_1
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Ret 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: ret_1
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_1: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Player 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: player_1
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Ret 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: ret_2
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_2: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Ret 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: ret_3
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_3: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Ret 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: ret_4
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_4: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Ret 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: ret_5
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_5: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Ret 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: ret_7
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_7: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Player 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Player 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Player 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Player 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Player 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: player_7
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ret_2}/${player_2}"
      label: Retention 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_2
      _type_hint: number
    - category: table_calculation
      expression: "${ret_3}/${player_3}"
      label: Retention 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_3
      _type_hint: number
    - category: table_calculation
      expression: "${ret_4}/${player_4}"
      label: Retention 4
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_4
      _type_hint: number
    - category: table_calculation
      expression: "${ret_5}/${player_5}"
      label: Retention 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_5
      _type_hint: number
    - category: table_calculation
      expression: "${ret_7}/${player_7}"
      label: Retention 7
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_7
      _type_hint: number
    - category: measure
      expression: ''
      label: New Users
      based_on: users_pdt.advertising_id
      _kind_hint: measure
      measure: new_users
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Player 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: player_14
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Ret 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: ret_14
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_14: '1'
    - category: table_calculation
      expression: "${ret_14}/${player_14}"
      label: Retention 14
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_14
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
    series_cell_visualizations:
      new_users:
        is_active: false
    series_text_format:
      users_pdt.installed_date:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
      new_users:
        align: center
      retention_14:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_2]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_3]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_4]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_5]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_7]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [new_users]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_14]}]
    hidden_pivots: {}
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
    defaults_version: 1
    hidden_fields: [ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, ret_14, player_14, ret_1]
    listen:
      Country: users_pdt.country
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Installed Date: users_pdt.installed_date
      Partner: users_pdt.network
      App Version: users_pdt.app_version
      Platform: users_pdt.user_platform
      Test Group: users_pdt.user_split_test_name
    row: 0
    col: 0
    width: 24
    height: 11
  - title: Retention Report (Area)
    name: Retention Report (Area)
    model: tile_match
    explore: users_pdt
    type: looker_area
    fields: [users_pdt.installed_date, ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7,
      player_1, player_2, player_3, player_4, player_5, player_7, new_users, ret_14,
      player_14]
    fill_fields: [users_pdt.installed_date]
    sorts: [users_pdt.installed_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${ret_1_1}/${player_1}"
      label: Retention 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_1
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Ret 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: ret_1_1
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_1: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Player 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: player_1
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Ret 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: ret_2
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_2: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Ret 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: ret_3
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_3: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Ret 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: ret_4
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_4: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Ret 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: ret_5
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_5: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Ret 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: ret_7
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_7: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Player 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Player 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Player 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Player 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Player 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: player_7
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ret_2}/${player_2}"
      label: Retention 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_2
      _type_hint: number
    - category: table_calculation
      expression: "${ret_3}/${player_3}"
      label: Retention 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_3
      _type_hint: number
    - category: table_calculation
      expression: "${ret_4}/${player_4}"
      label: Retention 4
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_4
      _type_hint: number
    - category: table_calculation
      expression: "${ret_5}/${player_5}"
      label: Retention 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_5
      _type_hint: number
    - category: table_calculation
      expression: "${ret_7}/${player_7}"
      label: Retention 7
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_7
      _type_hint: number
    - category: measure
      expression: ''
      label: New Users
      based_on: users_pdt.advertising_id
      _kind_hint: measure
      measure: new_users
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Ret 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: ret_14
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_14: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Player 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: player_14
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ret_14}/${player_14}"
      label: Retention 14
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_14
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [retention_7, retention_5, retention_4]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_text_format:
      users_pdt.installed_date:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_2]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_3]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_4]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_5]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_7]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_fields: [ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, new_users, player_14, ret_14]
    listen:
      Country: users_pdt.country
      Creative: users_pdt.creative
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Installed Date: users_pdt.installed_date
      App Version: users_pdt.app_version
      Platform: users_pdt.user_platform
      Test Group: users_pdt.user_split_test_name
    row: 25
    col: 0
    width: 24
    height: 9
  - title: Retention Coefficients (Table)
    name: Retention Coefficients (Table)
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [users_pdt.installed_date, ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7,
      player_1, player_2, player_3, player_4, player_5, player_7, new_users, player_14,
      ret_14]
    fill_fields: [users_pdt.installed_date]
    sorts: [users_pdt.installed_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${ret_1_1}/${player_1}"
      label: Retention 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_1
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Ret 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: ret_1_1
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_1: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Player 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: player_1
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Ret 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: ret_2
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_2: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Ret 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: ret_3
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_3: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Ret 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: ret_4
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_4: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Ret 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: ret_5
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_5: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Ret 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: ret_7
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_7: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Player 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Player 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Player 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Player 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Player 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: player_7
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ret_2}/${player_2}"
      label: Retention 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_2
      _type_hint: number
    - category: table_calculation
      expression: "${ret_3}/${player_3}"
      label: Retention 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_3
      _type_hint: number
    - category: table_calculation
      expression: "${ret_4}/${player_4}"
      label: Retention 4
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_4
      _type_hint: number
    - category: table_calculation
      expression: "${ret_5}/${player_5}"
      label: Retention 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_5
      _type_hint: number
    - category: table_calculation
      expression: "${ret_7}/${player_7}"
      label: Retention 7
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_7
      _type_hint: number
    - category: measure
      expression: ''
      label: New Users
      based_on: users_pdt.advertising_id
      _kind_hint: measure
      measure: new_users
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${retention_2}/${retention_1}"
      label: Ret 2 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_2_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_3}/${retention_1}"
      label: Ret 3 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_3_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_3}/${retention_2}"
      label: Ret 3 / Ret 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_3_ret_2
      _type_hint: number
    - category: table_calculation
      expression: "${retention_7}/${retention_1}"
      label: Ret 7 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_7_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_7}/${retention_3}"
      label: Ret 7 / Ret 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_7_ret_3
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Player 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: player_14
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Ret 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: ret_14
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_14: '1'
    - category: table_calculation
      expression: "${ret_14}/${player_14}"
      label: Retention 14
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_14
      _type_hint: number
    - category: table_calculation
      expression: "${retention_14}/${retention_1}"
      label: Ret 14 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_14_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_14}/${retention_7}"
      label: Ret 14 / Ret 7
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_14_ret_7
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
    series_cell_visualizations:
      new_users:
        is_active: false
    series_text_format:
      users_pdt.installed_date:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
      new_users:
        align: center
      ret_2_ret_1:
        align: center
      ret_3_ret_1:
        align: center
      ret_3_ret_2:
        align: center
      ret_7_ret_1:
        align: center
      ret_7_ret_3:
        align: center
      ret_14_ret_1:
        align: center
      ret_14_ret_7:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_2_ret_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_3_ret_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_3_ret_2]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_7_ret_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_7_ret_3]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [new_users]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_14_ret_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_14_ret_7]}]
    hidden_pivots: {}
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
    defaults_version: 1
    hidden_fields: [ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, retention_1, retention_2, retention_3,
      retention_4, retention_5, retention_7, ret_14, player_14, retention_14]
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_series: [retention_7, retention_5, retention_4]
    listen:
      Country: users_pdt.country
      Creative: users_pdt.creative
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Installed Date: users_pdt.installed_date
      App Version: users_pdt.app_version
      Platform: users_pdt.user_platform
      Test Group: users_pdt.user_split_test_name
    row: 34
    col: 0
    width: 24
    height: 8
  - title: Retention Coefficients (Line)
    name: Retention Coefficients (Line)
    model: tile_match
    explore: users_pdt
    type: looker_line
    fields: [users_pdt.installed_date, ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7,
      player_1, player_2, player_3, player_4, player_5, player_7, new_users, ret_14,
      player_14]
    fill_fields: [users_pdt.installed_date]
    sorts: [users_pdt.installed_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${ret_1_1}/${player_1}"
      label: Retention 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_1
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Ret 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: ret_1_1
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_1: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Player 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: player_1
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Ret 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: ret_2
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_2: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Ret 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: ret_3
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_3: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Ret 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: ret_4
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_4: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Ret 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: ret_5
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_5: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Ret 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: ret_7
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_7: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Player 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Player 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Player 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Player 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Player 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: player_7
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ret_2}/${player_2}"
      label: Retention 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_2
      _type_hint: number
    - category: table_calculation
      expression: "${ret_3}/${player_3}"
      label: Retention 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_3
      _type_hint: number
    - category: table_calculation
      expression: "${ret_4}/${player_4}"
      label: Retention 4
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_4
      _type_hint: number
    - category: table_calculation
      expression: "${ret_5}/${player_5}"
      label: Retention 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_5
      _type_hint: number
    - category: table_calculation
      expression: "${ret_7}/${player_7}"
      label: Retention 7
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_7
      _type_hint: number
    - category: measure
      expression: ''
      label: New Users
      based_on: users_pdt.advertising_id
      _kind_hint: measure
      measure: new_users
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${retention_2}/${retention_1}"
      label: Ret 2 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_2_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_3}/${retention_1}"
      label: Ret 3 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_3_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_3}/${retention_2}"
      label: Ret 3 / Ret 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_3_ret_2
      _type_hint: number
    - category: table_calculation
      expression: "${retention_7}/${retention_1}"
      label: Ret 7 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_7_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_7}/${retention_3}"
      label: Ret 7 / Ret 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_7_ret_3
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Ret 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: ret_14
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_14: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Player 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: player_14
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ret_14}/${player_14}"
      label: Retention 14
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_14
      _type_hint: number
    - category: table_calculation
      expression: "${retention_14}/${retention_1}"
      label: Ret 14 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_14_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_14}/${retention_7}"
      label: Ret 14 / Ret 7
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_14_ret_7
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
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [retention_7, retention_5, retention_4, ret_3_ret_2, ret_7_ret_3,
      ret_14_ret_1]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      new_users:
        is_active: false
    series_text_format:
      users_pdt.installed_date:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
      new_users:
        align: center
      ret_2_ret_1:
        align: center
      ret_3_ret_1:
        align: center
      ret_3_ret_2:
        align: center
      ret_7_ret_1:
        align: center
      ret_7_ret_3:
        align: center
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_2_ret_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_3_ret_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_3_ret_2]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_7_ret_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_7_ret_3]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [new_users]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_fields: [ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, retention_1, retention_2, retention_3,
      retention_4, retention_5, retention_7, new_users, ret_14, player_14, retention_14]
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Country: users_pdt.country
      Creative: users_pdt.creative
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Installed Date: users_pdt.installed_date
      App Version: users_pdt.app_version
      Platform: users_pdt.user_platform
      Test Group: users_pdt.user_split_test_name
    row: 42
    col: 0
    width: 24
    height: 10
  - title: Retention Coefficients (Weekly)
    name: Retention Coefficients (Weekly)
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2, player_3,
      player_4, player_5, player_7, new_users, users_pdt.installed_week, player_14,
      ret_14]
    fill_fields: [users_pdt.installed_week]
    sorts: [users_pdt.installed_week desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${ret_1_1}/${player_1}"
      label: Retention 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_1
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Ret 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: ret_1_1
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_1: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Player 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: player_1
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Ret 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: ret_2
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_2: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Ret 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: ret_3
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_3: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Ret 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: ret_4
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_4: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Ret 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: ret_5
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_5: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Ret 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: ret_7
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_7: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Player 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Player 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Player 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Player 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Player 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: player_7
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ret_2}/${player_2}"
      label: Retention 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_2
      _type_hint: number
    - category: table_calculation
      expression: "${ret_3}/${player_3}"
      label: Retention 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_3
      _type_hint: number
    - category: table_calculation
      expression: "${ret_4}/${player_4}"
      label: Retention 4
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_4
      _type_hint: number
    - category: table_calculation
      expression: "${ret_5}/${player_5}"
      label: Retention 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_5
      _type_hint: number
    - category: table_calculation
      expression: "${ret_7}/${player_7}"
      label: Retention 7
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_7
      _type_hint: number
    - category: measure
      expression: ''
      label: New Users
      based_on: users_pdt.advertising_id
      _kind_hint: measure
      measure: new_users
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${retention_2}/${retention_1}"
      label: Ret 2 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_2_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_3}/${retention_1}"
      label: Ret 3 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_3_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_3}/${retention_2}"
      label: Ret 3 / Ret 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_3_ret_2
      _type_hint: number
    - category: table_calculation
      expression: "${retention_7}/${retention_1}"
      label: Ret 7 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_7_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_7}/${retention_3}"
      label: Ret 7 / Ret 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_7_ret_3
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Player 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: player_14
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Ret 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: ret_14
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_14: '1'
    - category: table_calculation
      expression: "${ret_14}/${player_14}"
      label: Retention 14
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_14
      _type_hint: number
    - category: table_calculation
      expression: "${retention_14}/${retention_1}"
      label: Ret 14 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_14_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_14}/${retention_7}"
      label: Ret 14 / Ret 7
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_14_ret_7
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
    series_cell_visualizations:
      new_users:
        is_active: false
    series_text_format:
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
      new_users:
        align: center
      ret_2_ret_1:
        align: center
      ret_3_ret_1:
        align: center
      ret_3_ret_2:
        align: center
      ret_7_ret_1:
        align: center
      ret_7_ret_3:
        align: center
      users_pdt.installed_week:
        align: center
      ret_14_ret_7:
        align: center
      ret_14_ret_1:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_2_ret_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_3_ret_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_3_ret_2]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_7_ret_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_7_ret_3]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [new_users]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              mid: {type: number, value: 0}}, mirror: true, reverse: true}}, bold: false,
        italic: false, strikethrough: false, fields: [ret_14_ret_1]}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, mirror: true, constraints: {mid: {type: number, value: 0}}}},
        bold: false, italic: false, strikethrough: false, fields: [ret_14_ret_7]}]
    hidden_pivots: {}
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
    defaults_version: 1
    hidden_fields: [ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, retention_2, retention_3, retention_4,
      retention_5, retention_7, player_14, ret_14, retention_1, retention_14]
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_series: [retention_7, retention_5, retention_4]
    listen:
      Country: users_pdt.country
      Creative: users_pdt.creative
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Installed Date: users_pdt.installed_date
      App Version: users_pdt.app_version
      Platform: users_pdt.user_platform
      Test Group: users_pdt.user_split_test_name
    row: 52
    col: 0
    width: 24
    height: 8
  - title: Retention Coefficients by App Version
    name: Retention Coefficients by App Version
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2, player_3,
      player_4, player_5, player_7, new_users, users_pdt.app_version, player_14,
      ret_14]
    sorts: [users_pdt.app_version desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${ret_1_1}/${player_1}"
      label: Retention 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_1
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Ret 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: ret_1_1
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_1: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Player 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: player_1
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Ret 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: ret_2
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_2: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Ret 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: ret_3
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_3: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Ret 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: ret_4
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_4: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Ret 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: ret_5
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_5: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Ret 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: ret_7
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_7: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Player 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Player 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Player 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Player 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Player 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: player_7
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ret_2}/${player_2}"
      label: Retention 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_2
      _type_hint: number
    - category: table_calculation
      expression: "${ret_3}/${player_3}"
      label: Retention 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_3
      _type_hint: number
    - category: table_calculation
      expression: "${ret_4}/${player_4}"
      label: Retention 4
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_4
      _type_hint: number
    - category: table_calculation
      expression: "${ret_5}/${player_5}"
      label: Retention 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_5
      _type_hint: number
    - category: table_calculation
      expression: "${ret_7}/${player_7}"
      label: Retention 7
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_7
      _type_hint: number
    - category: measure
      expression: ''
      label: New Users
      based_on: users_pdt.advertising_id
      _kind_hint: measure
      measure: new_users
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${retention_2}/${retention_1}"
      label: Ret 2 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_2_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_3}/${retention_1}"
      label: Ret 3 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_3_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_3}/${retention_2}"
      label: Ret 3 / Ret 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_3_ret_2
      _type_hint: number
    - category: table_calculation
      expression: "${retention_7}/${retention_1}"
      label: Ret 7 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_7_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_7}/${retention_3}"
      label: Ret 7 / Ret 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_7_ret_3
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Player 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: player_14
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Ret 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: ret_14
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_14: '1'
    - category: table_calculation
      expression: "${ret_14}/${player_14}"
      label: Retention 14
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_14
      _type_hint: number
    - category: table_calculation
      expression: "${retention_14}/${retention_1}"
      label: Ret 14 / Ret 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_14_ret_1
      _type_hint: number
    - category: table_calculation
      expression: "${retention_14}/${retention_7}"
      label: Ret 14 / Ret 7
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: ret_14_ret_7
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
    series_cell_visualizations:
      new_users:
        is_active: false
    series_text_format:
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
      new_users:
        align: center
      ret_2_ret_1:
        align: center
      ret_3_ret_1:
        align: center
      ret_3_ret_2:
        align: center
      ret_7_ret_1:
        align: center
      ret_7_ret_3:
        align: center
      users_pdt.app_version:
        align: center
      ret_14_ret_1:
        align: center
      ret_14_ret_7:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_2_ret_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_3_ret_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_3_ret_2]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_7_ret_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ret_7_ret_3]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [new_users]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, mirror: true,
            constraints: {mid: {type: number, value: 0}}, reverse: true}}, bold: false,
        italic: false, strikethrough: false, fields: [ret_14_ret_1]}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, mirror: true, reverse: false, constraints: {mid: {type: number,
                value: 0}}}}, bold: false, italic: false, strikethrough: false, fields: [
          ret_14_ret_7]}]
    hidden_pivots: {}
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
    defaults_version: 1
    hidden_fields: [ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, retention_1, retention_2, retention_3,
      retention_4, retention_5, retention_7, player_14, ret_14, retention_14]
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_series: [retention_7, retention_5, retention_4]
    listen:
      Country: users_pdt.country
      Creative: users_pdt.creative
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Installed Date: users_pdt.installed_date
      App Version: users_pdt.app_version
      Platform: users_pdt.user_platform
      Test Group: users_pdt.user_split_test_name
    row: 60
    col: 0
    width: 24
    height: 8
  - title: Retention Dashboard (Weekly)
    name: Retention Dashboard (Weekly)
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2, player_3,
      player_4, player_5, player_7, new_users, player_14, ret_14, users_pdt.installed_week]
    fill_fields: [users_pdt.installed_week]
    filters: {}
    sorts: [users_pdt.installed_week desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${ret_1}/${player_1}"
      label: Retention 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_1
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Ret 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: ret_1
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_1: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Player 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: player_1
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Ret 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: ret_2
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_2: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Ret 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: ret_3
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_3: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Ret 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: ret_4
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_4: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Ret 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: ret_5
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_5: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Ret 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: ret_7
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_7: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Player 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Player 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Player 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Player 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Player 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: player_7
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ret_2}/${player_2}"
      label: Retention 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_2
      _type_hint: number
    - category: table_calculation
      expression: "${ret_3}/${player_3}"
      label: Retention 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_3
      _type_hint: number
    - category: table_calculation
      expression: "${ret_4}/${player_4}"
      label: Retention 4
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_4
      _type_hint: number
    - category: table_calculation
      expression: "${ret_5}/${player_5}"
      label: Retention 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_5
      _type_hint: number
    - category: table_calculation
      expression: "${ret_7}/${player_7}"
      label: Retention 7
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_7
      _type_hint: number
    - category: measure
      expression: ''
      label: New Users
      based_on: users_pdt.advertising_id
      _kind_hint: measure
      measure: new_users
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Player 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: player_14
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Ret 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: ret_14
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_14: '1'
    - category: table_calculation
      expression: "${ret_14}/${player_14}"
      label: Retention 14
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_14
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
    series_cell_visualizations:
      new_users:
        is_active: false
    series_text_format:
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
      new_users:
        align: center
      retention_14:
        align: center
      users_pdt.installed_week:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_2]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_3]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_4]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_5]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_7]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [new_users]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_14]}]
    hidden_pivots: {}
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
    defaults_version: 1
    hidden_fields: [ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, ret_14, player_14, ret_1]
    listen:
      Country: users_pdt.country
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Installed Date: users_pdt.installed_date
      Partner: users_pdt.network
      App Version: users_pdt.app_version
      Platform: users_pdt.user_platform
      Test Group: users_pdt.user_split_test_name
    row: 11
    col: 0
    width: 24
    height: 8
  - title: Retention Dashboard by App Version
    name: Retention Dashboard by App Version
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2, player_3,
      player_4, player_5, player_7, new_users, player_14, ret_14, users_pdt.app_version]
    filters: {}
    sorts: [users_pdt.app_version desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${ret_1}/${player_1}"
      label: Retention 1
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_1
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Ret 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: ret_1
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_1: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      label: Player 1
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>1
      _kind_hint: measure
      measure: player_1
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Ret 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: ret_2
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_2: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Ret 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: ret_3
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_3: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Ret 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: ret_4
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_4: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Ret 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: ret_5
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_5: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Ret 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: ret_7
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_7: '1'
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      label: Player 2
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>2
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      label: Player 3
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>3
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      label: Player 4
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>4
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      label: Player 5
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>5
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      label: Player 7
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>7
      _kind_hint: measure
      measure: player_7
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ret_2}/${player_2}"
      label: Retention 2
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_2
      _type_hint: number
    - category: table_calculation
      expression: "${ret_3}/${player_3}"
      label: Retention 3
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_3
      _type_hint: number
    - category: table_calculation
      expression: "${ret_4}/${player_4}"
      label: Retention 4
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_4
      _type_hint: number
    - category: table_calculation
      expression: "${ret_5}/${player_5}"
      label: Retention 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_5
      _type_hint: number
    - category: table_calculation
      expression: "${ret_7}/${player_7}"
      label: Retention 7
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_7
      _type_hint: number
    - category: measure
      expression: ''
      label: New Users
      based_on: users_pdt.advertising_id
      _kind_hint: measure
      measure: new_users
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Player 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: player_14
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      label: Ret 14
      based_on: users_pdt.advertising_id
      filter_expression: diff_days(${users_pdt.installed_date},trunc_days(now()))>14
      _kind_hint: measure
      measure: ret_14
      type: count_distinct
      _type_hint: number
      filters:
        users_pdt.retention_14: '1'
    - category: table_calculation
      expression: "${ret_14}/${player_14}"
      label: Retention 14
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: retention_14
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
    series_cell_visualizations:
      new_users:
        is_active: false
    series_text_format:
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
      new_users:
        align: center
      retention_14:
        align: center
      users_pdt.app_version:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_2]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_3]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_4]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_5]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_7]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [new_users]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [retention_14]}]
    hidden_pivots: {}
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
    defaults_version: 1
    hidden_fields: [ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, ret_14, player_14, ret_1]
    listen:
      Country: users_pdt.country
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Installed Date: users_pdt.installed_date
      Partner: users_pdt.network
      App Version: users_pdt.app_version
      Platform: users_pdt.user_platform
      Test Group: users_pdt.user_split_test_name
    row: 19
    col: 0
    width: 24
    height: 6
  filters:
  - name: Installed Date
    title: Installed Date
    type: field_filter
    default_value: 180 day ago for 180 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tile_match
    explore: users_pdt
    listens_to_filters: []
    field: users_pdt.installed_date
  - name: Country
    title: Country
    type: field_filter
    default_value: BR
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: users_pdt
    listens_to_filters: []
    field: users_pdt.country
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
    explore: users_pdt
    listens_to_filters: []
    field: users_pdt.app_version
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
    explore: users_pdt
    listens_to_filters: []
    field: users_pdt.network
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
    explore: users_pdt
    listens_to_filters: []
    field: users_pdt.campaign
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
    explore: users_pdt
    listens_to_filters: []
    field: users_pdt.adgroup
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
    explore: users_pdt
    listens_to_filters: []
    field: users_pdt.creative
  - name: Platform
    title: Platform
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: users_pdt
    listens_to_filters: []
    field: users_pdt.user_platform
  - name: Test Group
    title: Test Group
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: users_pdt
    listens_to_filters: []
    field: users_pdt.user_split_test_name
