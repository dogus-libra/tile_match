---
- dashboard: 55__streak_breaker_50__85_test
  title: 55 - Streak Breaker 50 - 85 Test
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: MmNrKvlN2diFFo9nD12oEi
  elements:
  - title: Level Reaches until Day 1
    name: Level Reaches until Day 1
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, player_count,
      level_5_reach_count, level_10_reach_count, level_20_reach_count, level_30_reach_count,
      level_50_reach_count, level_100_reach_count]
    filters:
      progression.installed_date: 30 days
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${level_5_reach_count}/${player_count}"
      label: Level 5 Reach Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_5_reach_rate
      _type_hint: number
    - category: table_calculation
      expression: "${level_10_reach_count}/${player_count}"
      label: Level 10 Reach Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_10_reach_rate
      _type_hint: number
    - category: table_calculation
      expression: "${level_20_reach_count}/${player_count}"
      label: Level 20 Reach Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_20_reach_rate
      _type_hint: number
    - category: table_calculation
      expression: "${level_30_reach_count}/${player_count}"
      label: Level 30 Reach Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_30_reach_rate
      _type_hint: number
    - category: table_calculation
      expression: "${level_50_reach_count}/${player_count}"
      label: Level 50 Reach Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_50_reach_rate
      _type_hint: number
    - category: table_calculation
      expression: "${level_100_reach_count}/${player_count}"
      label: Level 100 Reach Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_100_reach_rate
      _type_hint: number
    - category: table_calculation
      expression: "${level_10_reach_rate}/${level_5_reach_rate}"
      label: Level 10 / Level 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_10_level_5
      _type_hint: number
    - category: table_calculation
      expression: "${level_50_reach_rate}/${level_5_reach_rate}"
      label: Level 50 / Level 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_50_level_5
      _type_hint: number
    - category: table_calculation
      expression: "${level_100_reach_rate}/${level_5_reach_rate}"
      label: Level 100 / Level 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_100_level_5
      _type_hint: number
    - category: table_calculation
      expression: "${level_50_reach_rate}/${level_10_reach_rate}"
      label: Level 50 / Level 10
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_50_level_10
      _type_hint: number
    - category: table_calculation
      expression: "${level_100_reach_rate}/${level_50_reach_rate}"
      label: Level 100 / Level 50
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_100_level_50
      _type_hint: number
    - category: measure
      expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=5 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=24
      label: Level 5 Reach Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      filter_expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=5 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=24
      _kind_hint: measure
      measure: level_5_reach_count
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ''
      label: Player Count
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: player_count
      type: count_distinct
      _type_hint: number
      filters: {}
    - category: measure
      expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=10 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=24
      label: Level 10 Reach Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      filter_expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=10 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=24
      _kind_hint: measure
      measure: level_10_reach_count
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=20 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=24
      label: Level 20 Reach Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      filter_expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=20 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=24
      _kind_hint: measure
      measure: level_20_reach_count
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=30 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=24
      label: Level 30 Reach Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      filter_expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=30 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=24
      _kind_hint: measure
      measure: level_30_reach_count
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=50 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=24
      label: Level 50 Reach Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      filter_expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=50 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=24
      _kind_hint: measure
      measure: level_50_reach_count
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=100 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=24
      label: Level 100 Reach Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      filter_expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=100 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=24
      _kind_hint: measure
      measure: level_100_reach_count
      type: count_distinct
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
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
    series_cell_visualizations:
      player_count:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      level_5_reach_rate:
        align: center
      level_10_reach_rate:
        align: center
      level_50_reach_rate:
        align: center
      level_20_reach_rate:
        align: center
      level_30_reach_rate:
        align: center
      level_100_reach_rate:
        align: center
      level_100_level_5:
        align: center
      level_50_level_10:
        align: center
      level_50_level_5:
        align: center
      level_10_level_5:
        align: center
      level_100_level_50:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab, options: {steps: 5, mirror: false,
            reverse: false, stepped: false}}, bold: false, italic: false, strikethrough: false,
        fields: [level_5_reach_rate]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [level_10_reach_rate]}, {type: along a scale...,
        value: !!null '', background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [level_20_reach_rate]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [level_30_reach_rate]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [level_50_reach_rate]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [level_100_reach_rate]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: f0077e50-e03c-4a7e-930c-7321b2267283, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: [level_10_level_5]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: f0077e50-e03c-4a7e-930c-7321b2267283,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [level_50_level_5]}, {type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: f0077e50-e03c-4a7e-930c-7321b2267283, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: [level_100_level_5]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: f0077e50-e03c-4a7e-930c-7321b2267283,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [level_50_level_10]}, {type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: f0077e50-e03c-4a7e-930c-7321b2267283, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: [level_100_level_50]}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [level_5_reach_count, level_10_reach_count, level_20_reach_count,
      level_30_reach_count, level_50_reach_count, level_100_reach_count]
    series_column_widths:
      progression.user_split_test_name_Store_Cheap_Expensive: 263
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 78
    col: 0
    width: 24
    height: 4
  - title: Level Reaches until Day 2
    name: Level Reaches until Day 2
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, player_count,
      level_5_reach_count, level_10_reach_count, level_20_reach_count, level_30_reach_count,
      level_50_reach_count, level_100_reach_count, level_150_reach_count]
    filters:
      progression.installed_date: 30 days
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${level_5_reach_count}/${player_count}"
      label: Level 5 Reach Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_5_reach_rate
      _type_hint: number
    - category: table_calculation
      expression: "${level_10_reach_count}/${player_count}"
      label: Level 10 Reach Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_10_reach_rate
      _type_hint: number
    - category: table_calculation
      expression: "${level_20_reach_count}/${player_count}"
      label: Level 20 Reach Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_20_reach_rate
      _type_hint: number
    - category: table_calculation
      expression: "${level_30_reach_count}/${player_count}"
      label: Level 30 Reach Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_30_reach_rate
      _type_hint: number
    - category: table_calculation
      expression: "${level_50_reach_count}/${player_count}"
      label: Level 50 Reach Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_50_reach_rate
      _type_hint: number
    - category: table_calculation
      expression: "${level_100_reach_count}/${player_count}"
      label: Level 100 Reach Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_100_reach_rate
      _type_hint: number
    - category: table_calculation
      expression: "${level_10_reach_rate}/${level_5_reach_rate}"
      label: Level 10 / Level 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_10_level_5
      _type_hint: number
    - category: table_calculation
      expression: "${level_50_reach_rate}/${level_5_reach_rate}"
      label: Level 50 / Level 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_50_level_5
      _type_hint: number
    - category: table_calculation
      expression: "${level_100_reach_rate}/${level_5_reach_rate}"
      label: Level 100 / Level 5
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_100_level_5
      _type_hint: number
    - category: table_calculation
      expression: "${level_50_reach_rate}/${level_10_reach_rate}"
      label: Level 50 / Level 10
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_50_level_10
      _type_hint: number
    - category: table_calculation
      expression: "${level_100_reach_rate}/${level_50_reach_rate}"
      label: Level 100 / Level 50
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_100_level_50
      _type_hint: number
    - category: measure
      expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=5 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      label: Level 5 Reach Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      filter_expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=5 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      _kind_hint: measure
      measure: level_5_reach_count
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ''
      label: Player Count
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: player_count
      type: count_distinct
      _type_hint: number
      filters: {}
    - category: measure
      expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=10 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      label: Level 10 Reach Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      filter_expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=10 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      _kind_hint: measure
      measure: level_10_reach_count
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=20 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      label: Level 20 Reach Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      filter_expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=20 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      _kind_hint: measure
      measure: level_20_reach_count
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=30 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      label: Level 30 Reach Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      filter_expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=30 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      _kind_hint: measure
      measure: level_30_reach_count
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=50 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      label: Level 50 Reach Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      filter_expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=50 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      _kind_hint: measure
      measure: level_50_reach_count
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=100 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      label: Level 100 Reach Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      filter_expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=100 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      _kind_hint: measure
      measure: level_100_reach_count
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=150 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      label: Level 150 Reach Count
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      filter_expression: ${progression.event_name} = "LevelCompleted" AND ${progression.user_level_at}
        >=150 AND diff_hours(${progression.installed_time},${progression.event_timestamp_time})<=48
      _kind_hint: measure
      measure: level_150_reach_count
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${level_150_reach_count}/${player_count}"
      label: Level 150 Reach Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_150_reach_rate
      _type_hint: number
    - category: table_calculation
      expression: "${level_150_reach_rate}/${level_50_reach_rate}"
      label: Level 150 / Level 50
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: level_150_level_50
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
    column_order: [progression.user_split_test_name_Store_Cheap_Expensive, player_count,
      level_5_reach_rate, level_10_reach_rate, level_20_reach_rate, level_30_reach_rate,
      level_50_reach_rate, level_100_reach_rate, level_150_reach_rate, level_10_level_5,
      level_50_level_5, level_100_level_5, level_50_level_10, level_100_level_50]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
    series_cell_visualizations:
      player_count:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      level_5_reach_rate:
        align: center
      level_10_reach_rate:
        align: center
      level_50_reach_rate:
        align: center
      level_20_reach_rate:
        align: center
      level_30_reach_rate:
        align: center
      level_100_reach_rate:
        align: center
      level_100_level_5:
        align: center
      level_50_level_10:
        align: center
      level_50_level_5:
        align: center
      level_10_level_5:
        align: center
      level_100_level_50:
        align: center
      level_150_reach_rate:
        align: center
      level_150_level_50:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab, options: {steps: 5, mirror: false,
            reverse: false, stepped: false}}, bold: false, italic: false, strikethrough: false,
        fields: [level_5_reach_rate]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [level_10_reach_rate]}, {type: along a scale...,
        value: !!null '', background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [level_20_reach_rate]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [level_30_reach_rate]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [level_50_reach_rate]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [level_100_reach_rate]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: f0077e50-e03c-4a7e-930c-7321b2267283, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: [level_10_level_5]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: f0077e50-e03c-4a7e-930c-7321b2267283,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [level_50_level_5]}, {type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: f0077e50-e03c-4a7e-930c-7321b2267283, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: [level_100_level_5]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: f0077e50-e03c-4a7e-930c-7321b2267283,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [level_50_level_10]}, {type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: f0077e50-e03c-4a7e-930c-7321b2267283, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: [level_100_level_50]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [level_150_reach_rate]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: f0077e50-e03c-4a7e-930c-7321b2267283,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [level_150_level_50]}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [level_5_reach_count, level_10_reach_count, level_20_reach_count,
      level_30_reach_count, level_50_reach_count, level_100_reach_count, level_150_reach_count]
    series_column_widths:
      progression.user_split_test_name_Store_Cheap_Expensive: 280
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 82
    col: 0
    width: 24
    height: 4
  - title: Avg Play Time per User
    name: Avg Play Time per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, average_of_sessioncount, average_of_playtime,
      engagement_pdt.user_split_test_name_Store_Cheap_Expensive]
    pivots: [engagement_pdt.user_split_test_name_Store_Cheap_Expensive]
    fill_fields: [engagement_pdt.client_date]
    filters:
      engagement_pdt.install_day_of_user: ''
      engagement_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [engagement_pdt.user_split_test_name_Store_Cheap_Expensive, engagement_pdt.client_date
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: average_of_sessioncount
      based_on: engagement_pdt.sessioncount
      expression: ''
      label: Average of Sessioncount
      type: average
      _kind_hint: measure
      _type_hint: number
    - measure: average_of_playtime
      based_on: engagement_pdt.playtime
      expression: ''
      label: Average of Playtime
      type: average
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${average_of_playtime},-3,7))
      label: Mov Avg of Avg Play Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_avg_play_time
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
    hidden_series: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      mov_avg_of_per90_playtime, mov_avg_of_avg_play_time, Default - mov_avg_of_avg_play_time,
      TimeBased - mov_avg_of_avg_play_time]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      average_of_sessioncount, mov_avg_of_avg_play_time]
    listen:
      Client Date (only for Engagement): engagement_pdt.client_date
      Platform: engagement_pdt.user_platform
      Installed Date: engagement_pdt.installed_date
      Country: engagement_pdt.country
      Country (Tier): engagement_pdt.country_tier
      App Version: engagement_pdt.app_version
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      Creative: engagement_pdt.creative
      Level No: engagement_pdt.user_level_at
    row: 86
    col: 0
    width: 8
    height: 7
  - title: Avg Session Count per User
    name: Avg Session Count per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, average_of_sessioncount, average_of_playtime,
      engagement_pdt.user_split_test_name_Store_Cheap_Expensive]
    pivots: [engagement_pdt.user_split_test_name_Store_Cheap_Expensive]
    fill_fields: [engagement_pdt.client_date]
    filters:
      engagement_pdt.install_day_of_user: ''
      engagement_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [engagement_pdt.user_split_test_name_Store_Cheap_Expensive, engagement_pdt.client_date
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: average_of_sessioncount
      based_on: engagement_pdt.sessioncount
      expression: ''
      label: Average of Sessioncount
      type: average
      _kind_hint: measure
      _type_hint: number
    - measure: average_of_playtime
      based_on: engagement_pdt.playtime
      expression: ''
      label: Average of Playtime
      type: average
      _kind_hint: measure
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
    hidden_series: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      mov_avg_of_per90_playtime]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      average_of_playtime]
    listen:
      Client Date (only for Engagement): engagement_pdt.client_date
      Platform: engagement_pdt.user_platform
      Installed Date: engagement_pdt.installed_date
      Country: engagement_pdt.country
      Country (Tier): engagement_pdt.country_tier
      App Version: engagement_pdt.app_version
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      Creative: engagement_pdt.creative
      Level No: engagement_pdt.user_level_at
    row: 86
    col: 8
    width: 8
    height: 7
  - title: Avg Session Time
    name: Avg Session Time
    model: tile_match
    explore: session_pdt
    type: looker_line
    fields: [session_pdt.client_date, session_pdt.avg_sessiontime, session_pdt.user_split_test_name_Store_Cheap_Expensive]
    pivots: [session_pdt.user_split_test_name_Store_Cheap_Expensive]
    fill_fields: [session_pdt.client_date]
    filters:
      session_pdt.install_day_of_user: ''
      session_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [session_pdt.user_split_test_name_Store_Cheap_Expensive, session_pdt.client_date
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: median_of_session_time
      based_on: session_pdt.session_time
      expression: ''
      label: Median of Session Time
      type: median
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.avg_sessiontime},-6,7))
      label: Moving Avg of Avg Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_avg_session_time
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
    hidden_series: [moving_avg_of_avg_session_time, Default - moving_avg_of_avg_session_time,
      TimeBased - moving_avg_of_avg_session_time]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [moving_avg_of_avg_session_time]
    listen:
      Client Date (only for Engagement): session_pdt.client_date
      Platform: session_pdt.user_platform
      Installed Date: session_pdt.installed_date
      Country: session_pdt.country
      Country (Tier): session_pdt.country_tier
      App Version: session_pdt.app_version
      Partner: session_pdt.network
      Campaign: session_pdt.campaign
      Adgroup: session_pdt.adgroup
      Creative: session_pdt.creative
      Level No: session_pdt.user_level_at
    row: 86
    col: 16
    width: 8
    height: 7
  - title: Median Play Time per User
    name: Median Play Time per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, engagement_pdt.per25playtime, median_of_playtime,
      engagement_pdt.per75playtime, engagement_pdt.per90playtime, engagement_pdt.user_split_test_name_Store_Cheap_Expensive]
    pivots: [engagement_pdt.user_split_test_name_Store_Cheap_Expensive]
    fill_fields: [engagement_pdt.client_date]
    filters:
      engagement_pdt.install_day_of_user: ''
      engagement_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [engagement_pdt.user_split_test_name_Store_Cheap_Expensive, engagement_pdt.client_date
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: median_of_playtime
      based_on: engagement_pdt.playtime
      expression: ''
      label: Median of Playtime
      type: median
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per25playtime},-3,7))
      label: Mov Avg of Per25 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per25_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${median_of_playtime},-3,7))
      label: Mov Avg of Median Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_median_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per75playtime},-3,7))
      label: Mov Avg of Per75 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per75_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per90playtime},-3,7))
      label: Mov Avg of Per90 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per90_playtime
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
    hidden_series: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, TimeBased
        - mov_avg_of_median_playtime, Default - mov_avg_of_median_playtime]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [engagement_pdt.per75playtime, engagement_pdt.per90playtime, mov_avg_of_per75_playtime,
      mov_avg_of_per90_playtime, engagement_pdt.per25playtime, mov_avg_of_per25_playtime,
      mov_avg_of_median_playtime]
    listen:
      Client Date (only for Engagement): engagement_pdt.client_date
      Platform: engagement_pdt.user_platform
      Installed Date: engagement_pdt.installed_date
      Country: engagement_pdt.country
      Country (Tier): engagement_pdt.country_tier
      App Version: engagement_pdt.app_version
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      Creative: engagement_pdt.creative
      Level No: engagement_pdt.user_level_at
    row: 93
    col: 0
    width: 8
    height: 7
  - title: Median Session Count per User
    name: Median Session Count per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, engagement_pdt.per25sessioncount, median_of_sessioncount,
      engagement_pdt.per75sessioncount, engagement_pdt.per90sessioncount, engagement_pdt.user_split_test_name_Store_Cheap_Expensive]
    pivots: [engagement_pdt.user_split_test_name_Store_Cheap_Expensive]
    fill_fields: [engagement_pdt.client_date]
    filters:
      engagement_pdt.install_day_of_user: ''
      engagement_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [engagement_pdt.user_split_test_name_Store_Cheap_Expensive, engagement_pdt.client_date
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: median_of_sessioncount
      based_on: engagement_pdt.sessioncount
      expression: ''
      label: Median of Sessioncount
      type: median
      _kind_hint: measure
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
    hidden_series: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      mov_avg_of_per90_playtime]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      engagement_pdt.per75sessioncount, engagement_pdt.per90sessioncount, engagement_pdt.per25sessioncount]
    listen:
      Client Date (only for Engagement): engagement_pdt.client_date
      Platform: engagement_pdt.user_platform
      Installed Date: engagement_pdt.installed_date
      Country: engagement_pdt.country
      Country (Tier): engagement_pdt.country_tier
      App Version: engagement_pdt.app_version
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      Creative: engagement_pdt.creative
      Level No: engagement_pdt.user_level_at
    row: 93
    col: 8
    width: 8
    height: 7
  - title: Median Session Time
    name: Median Session Time
    model: tile_match
    explore: session_pdt
    type: looker_line
    fields: [session_pdt.client_date, session_pdt.per25sessiontime, session_pdt.per50sessiontime,
      session_pdt.per75sessiontime, session_pdt.per90sessiontime, session_pdt.user_split_test_name_Store_Cheap_Expensive]
    pivots: [session_pdt.user_split_test_name_Store_Cheap_Expensive]
    fill_fields: [session_pdt.client_date]
    filters:
      session_pdt.install_day_of_user: ''
      session_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [session_pdt.user_split_test_name_Store_Cheap_Expensive, session_pdt.client_date
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per25sessiontime},-6,7))
      label: Moving Avg of Per25 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per25_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per50sessiontime},-6,7))
      label: Moving Avg of Per50 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per50_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per75sessiontime},-6,7))
      label: Moving Avg of Per75 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per75_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per90sessiontime},-6,7))
      label: Moving Avg of Per90 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per90_session_time
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
    hidden_series: [moving_avg_of_per25_session_time, moving_avg_of_per50_session_time,
      TimeBased - moving_avg_of_per50_session_time, Default - moving_avg_of_per50_session_time]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [session_pdt.per75sessiontime, session_pdt.per90sessiontime, moving_avg_of_per75_session_time,
      moving_avg_of_per90_session_time, session_pdt.per25sessiontime, moving_avg_of_per25_session_time,
      moving_avg_of_per50_session_time]
    listen:
      Client Date (only for Engagement): session_pdt.client_date
      Platform: session_pdt.user_platform
      Installed Date: session_pdt.installed_date
      Country: session_pdt.country
      Country (Tier): session_pdt.country_tier
      App Version: session_pdt.app_version
      Partner: session_pdt.network
      Campaign: session_pdt.campaign
      Adgroup: session_pdt.adgroup
      Creative: session_pdt.creative
      Level No: session_pdt.user_level_at
    row: 93
    col: 16
    width: 8
    height: 7
  - title: Win Rates (Level 1-10)
    name: Win Rates (Level 1-10)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, win_count, fail_count,
      progression.win_rate]
    filters:
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
      progression.user_level_at: "[1,10]"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: win_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: measure
      expression:
      label: Fail Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: fail_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: table_calculation
      expression: "${win_count}/(${fail_count}+${win_count})"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
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
    enable_conditional_formatting: false
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
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
      progression.win_rate: Win Rate (wo/extramoves)
    series_cell_visualizations:
      win_rate:
        is_active: true
      progression.win_rate:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      win_rate:
        align: center
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [win_count, fail_count]
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
    row: 100
    col: 0
    width: 8
    height: 3
  - title: Retention Report (Daily)
    name: Retention Report (Daily)
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [users_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1,
      player_2, player_3, player_4, player_5, player_7, new_users, player_14, ret_14,
      users_pdt.user_split_test_name_Store_Cheap_Expensive]
    pivots: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
    filters:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [users_pdt.user_split_test_name_Store_Cheap_Expensive, users_pdt.installed_date
        desc]
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
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
      label: Player 1
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
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
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      label: Player 2
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      label: Player 3
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      label: Player 4
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      label: Player 5
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
      label: Player 7
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
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
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
      label: Player 14
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
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
    table_theme: editable
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
      users_pdt.user_split_test_name_Store_Cheap_Expensive: Test Group
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
    series_column_widths:
      users_pdt.installed_date: 147
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 23
    col: 0
    width: 24
    height: 8
  - title: Retention Report (Weekly)
    name: Retention Report (Weekly)
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2, player_3,
      player_4, player_5, player_7, new_users, player_14, ret_14, users_pdt.user_split_test_name_Store_Cheap_Expensive,
      users_pdt.installed_week]
    pivots: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
    fill_fields: [users_pdt.installed_week]
    filters:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [users_pdt.user_split_test_name_Store_Cheap_Expensive, users_pdt.installed_week
        desc]
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
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
      label: Player 1
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
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
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      label: Player 2
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      label: Player 3
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      label: Player 4
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      label: Player 5
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
      label: Player 7
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
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
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
      label: Player 14
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
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
    table_theme: editable
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
      session_pdt.user_split_test_name_Store_Cheap_Expensive: Test Group
      users_pdt.user_split_test_name_Store_Cheap_Expensive: Test Group
    series_column_widths:
      users_pdt.installed_week: 151
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
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 31
    col: 0
    width: 24
    height: 8
  - title: Retention Report
    name: Retention Report
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2, player_3,
      player_4, player_5, player_7, new_users, player_14, ret_14, users_pdt.user_split_test_name_Store_Cheap_Expensive]
    filters:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
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
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
      label: Player 1
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
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
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      label: Player 2
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      label: Player 3
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      label: Player 4
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      label: Player 5
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
      label: Player 7
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
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
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
      label: Player 14
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
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
    series_labels:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: Test Group
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
      users_pdt.user_split_test_name_Store_Cheap_Expensive:
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
    series_column_widths:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: 256
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 20
    col: 0
    width: 24
    height: 3
  - title: Retention Report by App Version
    name: Retention Report by App Version
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2, player_3,
      player_4, player_5, player_7, new_users, player_14, ret_14, users_pdt.user_split_test_name_Store_Cheap_Expensive,
      users_pdt.app_version]
    pivots: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
    filters:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [users_pdt.user_split_test_name_Store_Cheap_Expensive, ret_1 desc 0]
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
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
      label: Player 1
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
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
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      label: Player 2
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      label: Player 3
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      label: Player 4
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      label: Player 5
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
      label: Player 7
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
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
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
      label: Player 14
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
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
    table_theme: editable
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
      users_pdt.user_split_test_name_Store_Cheap_Expensive: Test Group
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
      users_pdt.user_split_test_name_Store_Cheap_Expensive:
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
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 39
    col: 0
    width: 24
    height: 5
  - title: Retention Coefficients (Daily)
    name: Retention Coefficients (Daily)
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [users_pdt.installed_date, ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7,
      player_1, player_2, player_3, player_4, player_5, player_7, new_users, player_14,
      ret_14, users_pdt.user_split_test_name_Store_Cheap_Expensive]
    pivots: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
    filters:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [users_pdt.user_split_test_name_Store_Cheap_Expensive, users_pdt.installed_date
        desc]
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
    table_theme: editable
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
      users_pdt.user_split_test_name_Store_Cheap_Expensive: Test Group
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
    series_column_widths:
      users_pdt.installed_date: 142
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 47
    col: 0
    width: 24
    height: 8
  - title: Retention Coefficients (Weekly)
    name: Retention Coefficients (Weekly)
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2, player_3,
      player_4, player_5, player_7, new_users, player_14, ret_14, users_pdt.user_split_test_name_Store_Cheap_Expensive,
      users_pdt.installed_week]
    pivots: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
    fill_fields: [users_pdt.installed_week]
    filters:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [users_pdt.user_split_test_name_Store_Cheap_Expensive, users_pdt.installed_week
        desc]
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
    table_theme: editable
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
      users_pdt.user_split_test_name_Store_Cheap_Expensive: Test Group
    series_column_widths:
      users_pdt.installed_week: 147
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
      ret_14_ret_1:
        align: center
      ret_14_ret_7:
        align: center
      users_pdt.installed_week:
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
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 55
    col: 0
    width: 24
    height: 8
  - title: Retention Coefficients by App Version
    name: Retention Coefficients by App Version
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2, player_3,
      player_4, player_5, player_7, new_users, player_14, ret_14, users_pdt.user_split_test_name_Store_Cheap_Expensive,
      users_pdt.app_version]
    pivots: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
    filters:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [users_pdt.user_split_test_name_Store_Cheap_Expensive, ret_1_1 desc 0]
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
    table_theme: editable
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
      users_pdt.user_split_test_name_Store_Cheap_Expensive: Test Group
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
      ret_14_ret_1:
        align: center
      ret_14_ret_7:
        align: center
      users_pdt.app_version:
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
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 63
    col: 0
    width: 24
    height: 5
  - title: Retention Coefficients
    name: Retention Coefficients
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [ret_1_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2, player_3,
      player_4, player_5, player_7, new_users, player_14, ret_14, users_pdt.user_split_test_name_Store_Cheap_Expensive]
    filters:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
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
    series_labels:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: Test Group
    series_column_widths:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: 279
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
      ret_14_ret_1:
        align: center
      ret_14_ret_7:
        align: center
      users_pdt.user_split_test_name_Store_Cheap_Expensive:
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
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 44
    col: 0
    width: 24
    height: 3
  - title: Churn Report
    name: Churn Report
    model: tile_match
    explore: progression
    type: looker_line
    fields: [progression.user_level_at, unique_start, total_start, win_count, total_lose_move,
      total_lose_zone, total_lose_quit, total_lose_all, remaining_time_sec, avg_moves_made,
      users_pdt.user_split_test_name_Store_Cheap_Expensive]
    pivots: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
    filters:
      progression.fail_type: ''
      progression.event_name: ''
      progression.install_day_of_user: ''
      progression.event_version: 1.0.2
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
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
      value_format_name: percent_2
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
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: churn_between
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${uniquestart1})/${unique_start}"
      label: Churn Total
      value_format:
      value_format_name: percent_2
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
      total_lose_quit, total_lose_zone, total_lose_move, total_start, win_count, win_rate,
      win_rate_wkills]
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
    hidden_series: [DefaultElements - unique_start, SimplifiedElements - unique_start,
      DefaultElements - churn_count, SimplifiedElements - churn_count, DefaultElements
        - churn_ingame, SimplifiedElements - churn_between, SimplifiedElements - churn_ingame,
      DefaultElements - churn_between]
    listen:
      Client Date (only for Engagement): progression.event_timestamp_date
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 68
    col: 0
    width: 24
    height: 10
  - title: IAP Gross LTV Report (2)
    name: IAP Gross LTV Report (2)
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [users_pdt.installed_date, player_1, player_2, player_3, player_4, player_5,
      player_7, player_14, ltv1_iap_gross, ltv3_iap_gross, ltv7_iap_gross, ltv14_iap_gross,
      ltv1_ad, ltv3_ad, ltv7_ad, ltv14_ad, ltv1_blended_gross, ltv3_blended_gross,
      ltv7_blended_gross, ltv14_blended_gross, ltv1_blended_net, ltv3_blended_net,
      ltv7_blended_net, ltv14_blended_net, new_users, users_pdt.user_split_test_name_Store_Cheap_Expensive]
    pivots: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
    filters:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [users_pdt.user_split_test_name_Store_Cheap_Expensive, users_pdt.installed_date
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
      label: Player 1
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
      _kind_hint: measure
      measure: player_1
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      label: Player 2
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      label: Player 3
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      label: Player 4
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      label: Player 5
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
      label: Player 7
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
      _kind_hint: measure
      measure: player_7
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
      label: Player 14
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
      _kind_hint: measure
      measure: player_14
      type: count_distinct
      _type_hint: number
    - category: measure
      expression:
      label: Ltv1_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_iap
      _kind_hint: measure
      measure: ltv1_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_iap
      _kind_hint: measure
      measure: ltv3_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_iap
      _kind_hint: measure
      measure: ltv7_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_iap
      _kind_hint: measure
      measure: ltv14_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: measure
      expression:
      label: Ltv1_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_ad
      _kind_hint: measure
      measure: ltv1_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_ad
      _kind_hint: measure
      measure: ltv3_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_ad
      _kind_hint: measure
      measure: ltv7_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_ad
      _kind_hint: measure
      measure: ltv14_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: measure
      expression:
      label: Ltv1_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_blended_gross
      _kind_hint: measure
      measure: ltv1_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_blended_gross
      _kind_hint: measure
      measure: ltv3_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_blended_gross
      _kind_hint: measure
      measure: ltv7_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_blended_gross
      _kind_hint: measure
      measure: ltv14_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: measure
      expression:
      label: Ltv1_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_blended_net
      _kind_hint: measure
      measure: ltv1_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_blended_net
      _kind_hint: measure
      measure: ltv3_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_blended_net
      _kind_hint: measure
      measure: ltv7_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_blended_net
      _kind_hint: measure
      measure: ltv14_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: table_calculation
      expression: "${ltv1_iap_gross} / ${player_1}"
      label: LTV 1
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_1
      _type_hint: number
    - category: measure
      expression: ''
      label: New Users
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      _kind_hint: measure
      measure: new_users
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ltv3_iap_gross} / ${player_3}"
      label: LTV 3
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_3
      _type_hint: number
    - category: table_calculation
      expression: "${ltv7_iap_gross} / ${player_7}"
      label: LTV 7
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_7
      _type_hint: number
    - category: table_calculation
      expression: "${ltv14_iap_gross} / ${player_14}"
      label: LTV 14
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_14
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
        is_active: true
    series_text_format:
      ltv_1:
        align: center
      ltv_3:
        align: center
      ltv_7:
        align: center
      ltv_14:
        align: center
      users_pdt.installed_date:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_3]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_7]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_14]}]
    hidden_pivots: {}
    hidden_fields: [player_1, player_2, player_3, player_4, player_5, player_7, player_14,
      ltv1_iap_gross, ltv3_iap_gross, ltv7_iap_gross, ltv14_iap_gross, ltv1_ad, ltv3_ad,
      ltv7_ad, ltv14_ad, ltv1_blended_gross, ltv3_blended_gross, ltv7_blended_gross,
      ltv14_blended_gross, ltv1_blended_net, ltv3_blended_net, ltv7_blended_net, ltv14_blended_net]
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
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 3
    col: 0
    width: 24
    height: 7
  - title: Blended Net LTV Report (2)
    name: Blended Net LTV Report (2)
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [users_pdt.installed_date, player_1, player_2, player_3, player_4, player_5,
      player_7, player_14, ltv1_iap_gross, ltv3_iap_gross, ltv7_iap_gross, ltv14_iap_gross,
      ltv1_ad, ltv3_ad, ltv7_ad, ltv14_ad, ltv1_blended_gross, ltv3_blended_gross,
      ltv7_blended_gross, ltv14_blended_gross, ltv1_blended_net, ltv3_blended_net,
      ltv7_blended_net, ltv14_blended_net, new_users, users_pdt.user_split_test_name_Store_Cheap_Expensive]
    pivots: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
    filters:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [users_pdt.user_split_test_name_Store_Cheap_Expensive, users_pdt.installed_date
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
      label: Player 1
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
      _kind_hint: measure
      measure: player_1
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      label: Player 2
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      label: Player 3
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      label: Player 4
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      label: Player 5
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
      label: Player 7
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
      _kind_hint: measure
      measure: player_7
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
      label: Player 14
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
      _kind_hint: measure
      measure: player_14
      type: count_distinct
      _type_hint: number
    - category: measure
      expression:
      label: Ltv1_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_iap
      _kind_hint: measure
      measure: ltv1_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_iap
      _kind_hint: measure
      measure: ltv3_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_iap
      _kind_hint: measure
      measure: ltv7_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_iap
      _kind_hint: measure
      measure: ltv14_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: measure
      expression:
      label: Ltv1_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_ad
      _kind_hint: measure
      measure: ltv1_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_ad
      _kind_hint: measure
      measure: ltv3_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_ad
      _kind_hint: measure
      measure: ltv7_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_ad
      _kind_hint: measure
      measure: ltv14_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: measure
      expression:
      label: Ltv1_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_blended_gross
      _kind_hint: measure
      measure: ltv1_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_blended_gross
      _kind_hint: measure
      measure: ltv3_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_blended_gross
      _kind_hint: measure
      measure: ltv7_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_blended_gross
      _kind_hint: measure
      measure: ltv14_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: measure
      expression:
      label: Ltv1_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_blended_net
      _kind_hint: measure
      measure: ltv1_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_blended_net
      _kind_hint: measure
      measure: ltv3_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_blended_net
      _kind_hint: measure
      measure: ltv7_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_blended_net
      _kind_hint: measure
      measure: ltv14_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: table_calculation
      expression: "${ltv1_blended_net} / ${player_1}"
      label: LTV 1
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_1
      _type_hint: number
    - category: measure
      expression: ''
      label: New Users
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      _kind_hint: measure
      measure: new_users
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ltv3_blended_net} / ${player_3}"
      label: LTV 3
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_3
      _type_hint: number
    - category: table_calculation
      expression: "${ltv7_blended_net} / ${player_7}"
      label: LTV 7
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_7
      _type_hint: number
    - category: table_calculation
      expression: "${ltv14_blended_net} / ${player_14}"
      label: LTV 14
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_14
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
        is_active: true
    series_text_format:
      ltv_1:
        align: center
      ltv_3:
        align: center
      ltv_7:
        align: center
      ltv_14:
        align: center
      users_pdt.installed_date:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_3]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_7]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_14]}]
    hidden_pivots: {}
    hidden_fields: [player_1, player_2, player_3, player_4, player_5, player_7, player_14,
      ltv1_iap_gross, ltv3_iap_gross, ltv7_iap_gross, ltv14_iap_gross, ltv1_ad, ltv3_ad,
      ltv7_ad, ltv14_ad, ltv1_blended_gross, ltv3_blended_gross, ltv7_blended_gross,
      ltv14_blended_gross, ltv1_blended_net, ltv3_blended_net, ltv7_blended_net, ltv14_blended_net]
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
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 13
    col: 0
    width: 24
    height: 7
  - title: IAP Gross LTV Report (1)
    name: IAP Gross LTV Report (1)
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [player_1, player_2, player_3, player_4, player_5, player_7, player_14,
      ltv1_iap_gross, ltv3_iap_gross, ltv7_iap_gross, ltv14_iap_gross, ltv1_ad, ltv3_ad,
      ltv7_ad, ltv14_ad, ltv1_blended_gross, ltv3_blended_gross, ltv7_blended_gross,
      ltv14_blended_gross, ltv1_blended_net, ltv3_blended_net, ltv7_blended_net, ltv14_blended_net,
      new_users, users_pdt.user_split_test_name_Store_Cheap_Expensive]
    filters:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
      label: Player 1
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
      _kind_hint: measure
      measure: player_1
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      label: Player 2
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      label: Player 3
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      label: Player 4
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      label: Player 5
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
      label: Player 7
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
      _kind_hint: measure
      measure: player_7
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
      label: Player 14
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
      _kind_hint: measure
      measure: player_14
      type: count_distinct
      _type_hint: number
    - category: measure
      expression:
      label: Ltv1_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_iap
      _kind_hint: measure
      measure: ltv1_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_iap
      _kind_hint: measure
      measure: ltv3_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_iap
      _kind_hint: measure
      measure: ltv7_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_iap
      _kind_hint: measure
      measure: ltv14_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: measure
      expression:
      label: Ltv1_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_ad
      _kind_hint: measure
      measure: ltv1_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_ad
      _kind_hint: measure
      measure: ltv3_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_ad
      _kind_hint: measure
      measure: ltv7_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_ad
      _kind_hint: measure
      measure: ltv14_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: measure
      expression:
      label: Ltv1_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_blended_gross
      _kind_hint: measure
      measure: ltv1_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_blended_gross
      _kind_hint: measure
      measure: ltv3_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_blended_gross
      _kind_hint: measure
      measure: ltv7_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_blended_gross
      _kind_hint: measure
      measure: ltv14_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: measure
      expression:
      label: Ltv1_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_blended_net
      _kind_hint: measure
      measure: ltv1_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_blended_net
      _kind_hint: measure
      measure: ltv3_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_blended_net
      _kind_hint: measure
      measure: ltv7_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_blended_net
      _kind_hint: measure
      measure: ltv14_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: table_calculation
      expression: "${ltv1_iap_gross} / ${player_1}"
      label: LTV 1
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_1
      _type_hint: number
    - category: measure
      expression: ''
      label: New Users
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      _kind_hint: measure
      measure: new_users
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ltv3_iap_gross} / ${player_3}"
      label: LTV 3
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_3
      _type_hint: number
    - category: table_calculation
      expression: "${ltv7_iap_gross} / ${player_7}"
      label: LTV 7
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_7
      _type_hint: number
    - category: table_calculation
      expression: "${ltv14_iap_gross} / ${player_14}"
      label: LTV 14
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_14
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
        is_active: true
    series_text_format:
      ltv_1:
        align: center
      ltv_3:
        align: center
      ltv_7:
        align: center
      ltv_14:
        align: center
      users_pdt.user_split_test_name_Store_Cheap_Expensive:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_3]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_7]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_14]}]
    hidden_pivots: {}
    hidden_fields: [player_1, player_2, player_3, player_4, player_5, player_7, player_14,
      ltv1_iap_gross, ltv3_iap_gross, ltv7_iap_gross, ltv14_iap_gross, ltv1_ad, ltv3_ad,
      ltv7_ad, ltv14_ad, ltv1_blended_gross, ltv3_blended_gross, ltv7_blended_gross,
      ltv14_blended_gross, ltv1_blended_net, ltv3_blended_net, ltv7_blended_net, ltv14_blended_net]
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
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Blended Net LTV Report (1)
    name: Blended Net LTV Report (1)
    model: tile_match
    explore: users_pdt
    type: looker_grid
    fields: [player_1, player_2, player_3, player_4, player_5, player_7, player_14,
      ltv1_iap_gross, ltv3_iap_gross, ltv7_iap_gross, ltv14_iap_gross, ltv1_ad, ltv3_ad,
      ltv7_ad, ltv14_ad, ltv1_blended_gross, ltv3_blended_gross, ltv7_blended_gross,
      ltv14_blended_gross, ltv1_blended_net, ltv3_blended_net, ltv7_blended_net, ltv14_blended_net,
      new_users, users_pdt.user_split_test_name_Store_Cheap_Expensive]
    filters:
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
    sorts: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
      label: Player 1
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>1
        AND
        (${users_pdt.retention_1}=0 OR ${users_pdt.retention_1}=1)
      _kind_hint: measure
      measure: player_1
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      label: Player 2
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>2
        AND
        (${users_pdt.retention_2}=0 OR ${users_pdt.retention_2}=1)
      _kind_hint: measure
      measure: player_2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      label: Player 3
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>3
        AND
        (${users_pdt.retention_3}=0 OR ${users_pdt.retention_3}=1)
      _kind_hint: measure
      measure: player_3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      label: Player 4
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>4
        AND
        (${users_pdt.retention_4}=0 OR ${users_pdt.retention_4}=1)
      _kind_hint: measure
      measure: player_4
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      label: Player 5
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>5
        AND
        (${users_pdt.retention_5}=0 OR ${users_pdt.retention_5}=1)
      _kind_hint: measure
      measure: player_5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
      label: Player 7
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>7
        AND
        (${users_pdt.retention_7}=0 OR ${users_pdt.retention_7}=1)
      _kind_hint: measure
      measure: player_7
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
      label: Player 14
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      filter_expression: |-
        diff_days(${users_pdt.installed_date},trunc_days(now()))>14
        AND
        (${users_pdt.retention_14}=0 OR ${users_pdt.retention_14}=1)
      _kind_hint: measure
      measure: player_14
      type: count_distinct
      _type_hint: number
    - category: measure
      expression:
      label: Ltv1_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_iap
      _kind_hint: measure
      measure: ltv1_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_iap
      _kind_hint: measure
      measure: ltv3_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_iap
      _kind_hint: measure
      measure: ltv7_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_iap_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_iap
      _kind_hint: measure
      measure: ltv14_iap_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: measure
      expression:
      label: Ltv1_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_ad
      _kind_hint: measure
      measure: ltv1_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_ad
      _kind_hint: measure
      measure: ltv3_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_ad
      _kind_hint: measure
      measure: ltv7_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_ad
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_ad
      _kind_hint: measure
      measure: ltv14_ad
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: measure
      expression:
      label: Ltv1_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_blended_gross
      _kind_hint: measure
      measure: ltv1_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_blended_gross
      _kind_hint: measure
      measure: ltv3_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_blended_gross
      _kind_hint: measure
      measure: ltv7_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_blended_gross
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_blended_gross
      _kind_hint: measure
      measure: ltv14_blended_gross
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: measure
      expression:
      label: Ltv1_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv1_blended_net
      _kind_hint: measure
      measure: ltv1_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 1 day ago
    - category: measure
      expression:
      label: Ltv3_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv3_blended_net
      _kind_hint: measure
      measure: ltv3_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 3 day ago
    - category: measure
      expression:
      label: Ltv7_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv7_blended_net
      _kind_hint: measure
      measure: ltv7_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 7 day ago
    - category: measure
      expression:
      label: Ltv14_blended_net
      value_format:
      value_format_name:
      based_on: users_pdt.ltv14_blended_net
      _kind_hint: measure
      measure: ltv14_blended_net
      type: sum
      _type_hint: number
      filters:
        users_pdt.installed_date: before 14 day ago
    - category: table_calculation
      expression: "${ltv1_blended_net} / ${player_1}"
      label: LTV 1
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_1
      _type_hint: number
    - category: measure
      expression: ''
      label: New Users
      value_format:
      value_format_name:
      based_on: users_pdt.advertising_id
      _kind_hint: measure
      measure: new_users
      type: count_distinct
      _type_hint: number
    - category: table_calculation
      expression: "${ltv3_blended_net} / ${player_3}"
      label: LTV 3
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_3
      _type_hint: number
    - category: table_calculation
      expression: "${ltv7_blended_net} / ${player_7}"
      label: LTV 7
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_7
      _type_hint: number
    - category: table_calculation
      expression: "${ltv14_blended_net} / ${player_14}"
      label: LTV 14
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: ltv_14
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
        is_active: true
    series_text_format:
      ltv_1:
        align: center
      ltv_3:
        align: center
      ltv_7:
        align: center
      ltv_14:
        align: center
      users_pdt.user_split_test_name_Store_Cheap_Expensive:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_3]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_7]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ltv_14]}]
    hidden_pivots: {}
    hidden_fields: [player_1, player_2, player_3, player_4, player_5, player_7, player_14,
      ltv1_iap_gross, ltv3_iap_gross, ltv7_iap_gross, ltv14_iap_gross, ltv1_ad, ltv3_ad,
      ltv7_ad, ltv14_ad, ltv1_blended_gross, ltv3_blended_gross, ltv7_blended_gross,
      ltv14_blended_gross, ltv1_blended_net, ltv3_blended_net, ltv7_blended_net, ltv14_blended_net]
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
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 10
    col: 0
    width: 24
    height: 3
  - title: Win Rates (Level 11-20)
    name: Win Rates (Level 11-20)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, win_count, fail_count,
      progression.win_rate]
    filters:
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
      progression.user_level_at: "[11,20]"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: win_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: measure
      expression:
      label: Fail Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: fail_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: table_calculation
      expression: "${win_count}/(${fail_count}+${win_count})"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
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
    enable_conditional_formatting: false
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
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
      progression.win_rate: Win Rate (wo/extramoves)
    series_cell_visualizations:
      win_rate:
        is_active: true
      progression.win_rate:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      win_rate:
        align: center
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [win_count, fail_count]
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
    row: 100
    col: 8
    width: 8
    height: 3
  - title: Win Rates (Level 21-30)
    name: Win Rates (Level 21-30)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, win_count, fail_count,
      progression.win_rate]
    filters:
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
      progression.user_level_at: "[21,30]"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: win_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: measure
      expression:
      label: Fail Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: fail_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: table_calculation
      expression: "${win_count}/(${fail_count}+${win_count})"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
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
    enable_conditional_formatting: false
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
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
      progression.win_rate: Win Rate (wo/extramoves)
    series_cell_visualizations:
      win_rate:
        is_active: true
      progression.win_rate:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      win_rate:
        align: center
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [win_count, fail_count]
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
    row: 100
    col: 16
    width: 8
    height: 3
  - title: Win Rates (Level 31-50)
    name: Win Rates (Level 31-50)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, win_count, fail_count,
      progression.win_rate]
    filters:
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
      progression.user_level_at: "[31,50]"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: win_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: measure
      expression:
      label: Fail Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: fail_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: table_calculation
      expression: "${win_count}/(${fail_count}+${win_count})"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
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
    enable_conditional_formatting: false
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
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
      progression.win_rate: Win Rate (wo/extramoves)
    series_cell_visualizations:
      win_rate:
        is_active: true
      progression.win_rate:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      win_rate:
        align: center
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [win_count, fail_count]
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
    row: 103
    col: 0
    width: 8
    height: 3
  - title: Win Rates (Level 51-75)
    name: Win Rates (Level 51-75)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, win_count, fail_count,
      progression.win_rate]
    filters:
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
      progression.user_level_at: "[51,75]"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: win_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: measure
      expression:
      label: Fail Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: fail_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: table_calculation
      expression: "${win_count}/(${fail_count}+${win_count})"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
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
    enable_conditional_formatting: false
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
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
      progression.win_rate: Win Rate (wo/extramoves)
    series_cell_visualizations:
      win_rate:
        is_active: true
      progression.win_rate:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      win_rate:
        align: center
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [win_count, fail_count]
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
    row: 103
    col: 8
    width: 8
    height: 3
  - title: Win Rates (Level 76-100)
    name: Win Rates (Level 76-100)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, win_count, fail_count,
      progression.win_rate]
    filters:
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
      progression.user_level_at: "[76,100]"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: win_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: measure
      expression:
      label: Fail Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: fail_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: table_calculation
      expression: "${win_count}/(${fail_count}+${win_count})"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
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
    enable_conditional_formatting: false
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
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
      progression.win_rate: Win Rate (wo/extramoves)
    series_cell_visualizations:
      win_rate:
        is_active: true
      progression.win_rate:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      win_rate:
        align: center
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [win_count, fail_count]
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
    row: 103
    col: 16
    width: 8
    height: 3
  - title: Win Rates (Level 126-150)
    name: Win Rates (Level 126-150)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, win_count, fail_count,
      progression.win_rate]
    filters:
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
      progression.user_level_at: "[126,150]"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: win_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: measure
      expression:
      label: Fail Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: fail_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: table_calculation
      expression: "${win_count}/(${fail_count}+${win_count})"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
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
    enable_conditional_formatting: false
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
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
      progression.win_rate: Win Rate (wo/extramoves)
    series_cell_visualizations:
      win_rate:
        is_active: true
      progression.win_rate:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      win_rate:
        align: center
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [win_count, fail_count]
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
    row: 106
    col: 8
    width: 8
    height: 3
  - title: Win Rates (Level 101-125)
    name: Win Rates (Level 101-125)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, win_count, fail_count,
      progression.win_rate]
    filters:
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
      progression.user_level_at: "[101,125]"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: win_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: measure
      expression:
      label: Fail Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: fail_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: table_calculation
      expression: "${win_count}/(${fail_count}+${win_count})"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
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
    enable_conditional_formatting: false
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
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
      progression.win_rate: Win Rate (wo/extramoves)
    series_cell_visualizations:
      win_rate:
        is_active: true
      progression.win_rate:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      win_rate:
        align: center
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [win_count, fail_count]
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
    row: 106
    col: 0
    width: 8
    height: 3
  - title: Win Rates (Level 151-200)
    name: Win Rates (Level 151-200)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, win_count, fail_count,
      progression.win_rate]
    filters:
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
      progression.user_level_at: "[151,200]"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: win_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: measure
      expression:
      label: Fail Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: fail_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: table_calculation
      expression: "${win_count}/(${fail_count}+${win_count})"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
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
    enable_conditional_formatting: false
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
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
      progression.win_rate: Win Rate (wo/extramoves)
    series_cell_visualizations:
      win_rate:
        is_active: true
      progression.win_rate:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      win_rate:
        align: center
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [win_count, fail_count]
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
    row: 106
    col: 16
    width: 8
    height: 3
  - title: Win Rates (Level 301-400)
    name: Win Rates (Level 301-400)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, win_count, fail_count,
      progression.win_rate]
    filters:
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
      progression.user_level_at: "[301,400]"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: win_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: measure
      expression:
      label: Fail Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: fail_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: table_calculation
      expression: "${win_count}/(${fail_count}+${win_count})"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
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
    enable_conditional_formatting: false
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
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
      progression.win_rate: Win Rate (wo/extramoves)
    series_cell_visualizations:
      win_rate:
        is_active: true
      progression.win_rate:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      win_rate:
        align: center
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [win_count, fail_count]
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
    row: 109
    col: 8
    width: 8
    height: 3
  - title: Win Rates (Level 201-300)
    name: Win Rates (Level 201-300)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, win_count, fail_count,
      progression.win_rate]
    filters:
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
      progression.user_level_at: "[201,300]"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: win_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: measure
      expression:
      label: Fail Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: fail_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: table_calculation
      expression: "${win_count}/(${fail_count}+${win_count})"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
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
    enable_conditional_formatting: false
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
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
      progression.win_rate: Win Rate (wo/extramoves)
    series_cell_visualizations:
      win_rate:
        is_active: true
      progression.win_rate:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      win_rate:
        align: center
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [win_count, fail_count]
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
    row: 109
    col: 0
    width: 8
    height: 3
  - title: Win Rates (Level 401-500)
    name: Win Rates (Level 401-500)
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_split_test_name_Store_Cheap_Expensive, win_count, fail_count,
      progression.win_rate]
    filters:
      progression.user_split_test_name_Store_Cheap_Expensive: "-NULL"
      progression.user_level_at: "[401,500]"
    sorts: [progression.user_split_test_name_Store_Cheap_Expensive]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Win Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: win_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: measure
      expression:
      label: Fail Count
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: fail_count
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
    - category: table_calculation
      expression: "${win_count}/(${fail_count}+${win_count})"
      label: Win Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate
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
    enable_conditional_formatting: false
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
      progression.user_split_test_name_Store_Cheap_Expensive: Test Group
      progression.win_rate: Win Rate (wo/extramoves)
    series_cell_visualizations:
      win_rate:
        is_active: true
      progression.win_rate:
        is_active: true
    series_text_format:
      progression.user_split_test_name_Store_Cheap_Expensive:
        align: center
      win_rate:
        align: center
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [win_count, fail_count]
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
    row: 109
    col: 16
    width: 8
    height: 3
  - title: Level Report
    name: Level Report
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [progression.user_level_at, unique_start, total_start, total_lose_time,
      total_lose_zone, total_lose_quit, total_lose_all, avg_remaining_time_sec, time_begin_sec,
      progression.win_rate, all_extra_moves, users_pdt.user_split_test_name_Store_Cheap_Expensive,
      target_win_rate, mean_attempt, win_count]
    pivots: [users_pdt.user_split_test_name_Store_Cheap_Expensive]
    filters:
      progression.installed_date: 30 days
      progression.install_day_of_user: ''
      progression.user_split_test_name: ''
      progression.event_version: 1.0.2
      progression.connection_type: not 2
      progression.user_win_streak_group: ''
      users_pdt.user_split_test_name_Store_Cheap_Expensive: "-NULL"
      progression.user_balance_version: ''
      progression.event_timestamp_date: 30 days
    sorts: [users_pdt.user_split_test_name_Store_Cheap_Expensive, win_rate_wokills
        desc 1]
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
      label: Total Lose (Time)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_time
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.fail_type: TimeOver
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
      label: Win Count (Streak5)
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: win_count_streak5
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
        progression.user_win_streak_count: ">=5"
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
      label: Win Rate (wo/kills)
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate_wokills
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
      value_format_name: percent_2
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
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: churn_between
      _type_hint: number
    - category: table_calculation
      expression: "(${unique_start}-${uniquestart1})/${unique_start}"
      label: Churn Total
      value_format:
      value_format_name: percent_2
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
    - category: measure
      expression: ''
      label: Avg Remaining Time (sec)
      value_format:
      value_format_name: decimal_1
      based_on: progression.time_remain
      _kind_hint: measure
      measure: avg_remaining_time_sec
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Time Begin (sec)
      value_format:
      value_format_name: decimal_1
      based_on: progression.time_begin
      _kind_hint: measure
      measure: time_begin_sec
      type: average
      _type_hint: number
    - category: table_calculation
      expression: "${time_begin_sec} - ${avg_remaining_time_sec}"
      label: Avg Level Play Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: avg_level_play_time
      _type_hint: number
    - category: table_calculation
      expression: "${app_kills} /${total_start}"
      label: App Kills Ratio
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: app_kills_ratio
      _type_hint: number
    - category: measure
      expression: ''
      label: Time Begin (sec) (median)
      value_format:
      value_format_name: decimal_1
      based_on: progression.time_begin
      _kind_hint: measure
      measure: time_begin_sec_median
      type: median
      _type_hint: number
    - category: measure
      expression:
      label: All Extra Moves
      value_format:
      value_format_name:
      based_on: progression.extra_move_count
      _kind_hint: measure
      measure: all_extra_moves
      type: sum
      _type_hint: number
      filters:
        progression.extra_move_count: ">=1"
    - category: table_calculation
      expression: "${all_extra_moves} / ${win_count}"
      label: All ExtraMoves Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: all_extramoves_rate
      _type_hint: number
    - category: measure
      expression:
      label: Target Win Rate
      value_format:
      value_format_name:
      based_on: progression.target_win_rate
      _kind_hint: measure
      measure: target_win_rate
      type: min
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: table_calculation
      expression: 1/${target_win_rate}
      label: Target Diff
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: target_diff
      _type_hint: number
    - category: table_calculation
      expression: "(1/${progression.win_rate})*0.75 + (${mean_attempt})*0.25"
      label: Eff Diff
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: eff_diff
      _type_hint: number
    - category: measure
      expression:
      label: Mean Attempt
      value_format:
      value_format_name:
      based_on: progression.user_total_attempt_at_current_lvl
      _kind_hint: measure
      measure: mean_attempt
      type: average
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
        progression.user_total_attempt_at_current_lvl: "<=20"
    - category: table_calculation
      expression: abs(${target_diff}-${eff_diff})/${target_diff}
      label: Abs Diff Target Diff and Eff Diff
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: abs_diff_target_diff_and_eff_diff
      _type_hint: number
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
    - category: measure
      expression:
      label: Total Start (Streak5)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_start_streak5
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
        progression.user_win_streak_count: ">=5"
    - category: table_calculation
      expression: "${win_count_streak5}/${total_start_streak5}"
      label: Win Rate (Streak5)
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate_streak5
      _type_hint: number
      is_disabled: true
    - category: measure
      expression:
      label: Total Lose (All)(Streak5)
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: total_lose_allstreak5
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelFailed
        progression.user_win_streak_count: ">=5"
    - category: table_calculation
      expression: "${win_count_streak5}/(${total_lose_allstreak5}+${win_count_streak5})"
      label: Win Rate (wo/kills)(Streak5)
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: win_rate_wokillsstreak5
      _type_hint: number
      is_disabled: true
    - category: measure
      expression:
      label: Unique Start (Streak5)
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: unique_start_streak5
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelStarted
        progression.user_win_streak_count: ">=5"
    - category: table_calculation
      expression: offset(${unique_start_streak5},1)
      label: UniqueStart1 (Streak5)
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: uniquestart1_streak5
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "(${win_count_streak5}-${uniquestart1_streak5})/${win_count_streak5}"
      label: Churn Between (Streak5)
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: churn_between_streak5
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "(${unique_start_streak5}-${win_count_streak5})/${unique_start_streak5}"
      label: Churn InGame (Streak5)
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: churn_ingame_streak5
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "(${unique_start_streak5}-${uniquestart1_streak5})/${unique_start_streak5}"
      label: Churn Total (Streak5)
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: churn_total_streak5
      _type_hint: number
      is_disabled: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns:
      progression.user_level_at: left
    column_order: [progression.user_level_at, Streak Breaker 50_total_start, Streak
        Breaker 85_total_start, Streak Breaker 50_win_count, Streak Breaker 85_win_count,
      Streak Breaker 50_total_lose_time, Streak Breaker 85_total_lose_time, Streak
        Breaker 50_total_lose_zone, Streak Breaker 85_total_lose_zone, Streak Breaker
        50_total_lose_quit, Streak Breaker 85_total_lose_quit, Streak Breaker 50_total_lose_all,
      Streak Breaker 85_total_lose_all, Streak Breaker 50_avg_remaining_time_sec,
      Streak Breaker 85_avg_remaining_time_sec, Streak Breaker 50_progression.win_rate,
      Streak Breaker 85_progression.win_rate, Streak Breaker 50_progression.win_rate_streak5_n,
      Streak Breaker 85_progression.win_rate_streak5_n, Streak Breaker 50_win_rate,
      Streak Breaker 85_win_rate, Streak Breaker 50_win_rate_streak5, Streak Breaker
        85_win_rate_streak5, Streak Breaker 50_win_rate_wokills, Streak Breaker 85_win_rate_wokills,
      Streak Breaker 50_win_rate_wokillsstreak5, Streak Breaker 85_win_rate_wokillsstreak5,
      Streak Breaker 50_app_kills, Streak Breaker 85_app_kills, Streak Breaker 50_churn_ingame,
      Streak Breaker 85_churn_ingame, Streak Breaker 50_churn_ingame_streak5, Streak
        Breaker 85_churn_ingame_streak5, Streak Breaker 50_churn_between, Streak Breaker
        85_churn_between, Streak Breaker 50_churn_total, Streak Breaker 85_churn_total,
      Streak Breaker 50_churn_count, Streak Breaker 85_churn_count, Streak Breaker
        50_avg_level_play_time, Streak Breaker 85_avg_level_play_time, Streak Breaker
        50_app_kills_ratio, Streak Breaker 85_app_kills_ratio, Streak Breaker 50_all_extramoves_rate,
      Streak Breaker 85_all_extramoves_rate, Streak Breaker 50_abs_diff_target_diff_and_eff_diff,
      Streak Breaker 85_abs_diff_target_diff_and_eff_diff]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      progression.user_level_at: Level No
      progression.win_rate: Win Rate (wo/extramoves)
      progression.win_rate_streak5: Win Rate (wo/extramoves)(Streak5)
      progression.win_rate_streak8: Win Rate (wo/extramoves)(Streak8)
      progression.win_rate_streak5_n: Win Rate (wo/extramoves) (Streak 5)
    series_column_widths:
      progression.win_rate: 124
      Streak Breaker Passive_win_count: 156
      progression.user_level_at: 83
      Streak Breaker Active5_unique_start: 154
      Streak Breaker Active5_total_start: 92
      Streak Breaker Active5_total_lose_time: 152
      Streak Breaker Active5_total_lose_zone: 130
      Streak Breaker Active5_total_lose_quit: 125
      Streak Breaker Active5_total_lose_all: 117
      Streak Breaker Active5_avg_remaining_time_sec: 177
      Streak Breaker Active5_time_begin_sec: 127
      Streak Breaker Active5_progression.win_rate: 178
      Streak Breaker Active5_win_count: 154
      Streak Breaker Active5_win_rate: 149
      Streak Breaker Active5_win_rate_wokills: 137
      Streak Breaker Active5_app_kills: 83
      Streak Breaker Active5_churn_ingame: 113
      Streak Breaker Active5_churn_between: 118
      Streak Breaker Active5_churn_total: 97
      Streak Breaker Active5_churn_count: 103
      Streak Breaker Active5_avg_level_play_time: 143
      Streak Breaker Active5_app_kills_ratio: 114
      Streak Breaker Active5_all_extramoves_rate: 144
      Streak Breaker Active5_abs_diff_target_diff_and_eff_diff: 202
      Streak Breaker Active5_win_rate_streak5: 136
      Streak Breaker Active5_win_rate_wokillsstreak5: 187
      Streak Breaker Active8_unique_start: 154
      Streak Breaker Active8_total_start: 159
      Streak Breaker Active8_total_lose_time: 148
      Streak Breaker Active8_total_lose_zone: 130
      Streak Breaker Active8_total_lose_quit: 125
      Streak Breaker Active8_total_lose_all: 117
      Streak Breaker Active8_avg_remaining_time_sec: 177
      Streak Breaker Active8_time_begin_sec: 127
      Streak Breaker Active8_progression.win_rate: 178
      Streak Breaker Active8_win_count: 154
      Streak Breaker Active8_win_rate: 154
      Streak Breaker Active8_win_rate_wokills: 137
      Streak Breaker Active8_app_kills: 150
      Streak Breaker Active8_churn_ingame: 113
      Streak Breaker Active8_churn_between: 151
      Streak Breaker Active8_churn_total: 144
      Streak Breaker Active8_churn_count: 103
      Streak Breaker Active8_avg_level_play_time: 143
      Streak Breaker Active8_app_kills_ratio: 114
      Streak Breaker Active8_all_extramoves_rate: 144
      Streak Breaker Active8_abs_diff_target_diff_and_eff_diff: 202
      Streak Breaker Active8_win_rate_streak8: 136
      Streak Breaker Active8_win_rate_wokillsstreak8: 187
      Streak Breaker Passive_unique_start: 156
      Streak Breaker Passive_total_start: 167
      Streak Breaker Passive_total_lose_time: 130
      Streak Breaker Passive_total_lose_zone: 130
      Streak Breaker Passive_total_lose_quit: 125
      Streak Breaker Passive_total_lose_all: 117
      Streak Breaker Passive_avg_remaining_time_sec: 177
      Streak Breaker Passive_time_begin_sec: 127
      Streak Breaker Passive_progression.win_rate: 178
      Streak Breaker Passive_win_rate: 144
      Streak Breaker Passive_win_rate_wokills: 137
      Streak Breaker Passive_app_kills: 83
      Streak Breaker Passive_churn_ingame: 113
      Streak Breaker Passive_churn_between: 118
      Streak Breaker Passive_churn_total: 97
      Streak Breaker Passive_churn_count: 103
      Streak Breaker Passive_avg_level_play_time: 143
      Streak Breaker Passive_app_kills_ratio: 114
      Streak Breaker Passive_all_extramoves_rate: 144
      Streak Breaker Passive_abs_diff_target_diff_and_eff_diff: 202
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
      win_count:
        align: center
      total_lose_time:
        align: center
      avg_time_begin_sec:
        align: center
      avg_remaining_time_sec:
        align: center
      time_begin_sec:
        align: center
      avg_level_play_time:
        align: center
      app_kills_ratio:
        align: center
      win_rate_wokills:
        align: center
      progression.win_rate:
        align: center
      all_extramoves_rate:
        align: center
      abs_diff_target_diff_and_eff_diff:
        align: center
      churn_total_streak8:
        align: center
      churn_total_streak5:
        align: center
      churn_ingame_streak8:
        align: center
      churn_ingame_streak5:
        align: center
      churn_between_streak8:
        align: center
      churn_between_streak5:
        align: center
      win_rate_wokillsstreak8:
        align: center
      win_rate_wokillsstreak5:
        align: center
      win_rate_streak8:
        align: center
      win_rate_streak5:
        align: center
      progression.win_rate_streak5:
        align: center
      progression.win_rate_streak8:
        align: center
      progression.win_rate_streak5_n:
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
        strikethrough: false, fields: [win_rate_wokills]}, {type: along a scale...,
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
        bold: false, italic: false, strikethrough: false, fields: [churn_total]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [app_kills_ratio]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [progression.win_rate]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: true, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [all_extramoves_rate]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [abs_diff_target_diff_and_eff_diff]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: []}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: []}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: true, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: []}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: true, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: []}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: []}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: []}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: true, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: []}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: true, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: []}]
    series_value_format:
      progression.win_rate:
        name: percent_1
        decimals: '1'
        format_string: "#,##0.0%"
        label: Percent (1)
        label_prefix: Percent
    hidden_pivots:
      Streak Breaker Active5:
        measure_names:
        - churn_total_streak5
        - churn_between_streak5
      Streak Breaker Active8:
        measure_names:
        - win_rate_streak5
        - win_rate_wokillsstreak5
        - churn_total_streak5
        - churn_ingame_streak5
        - churn_between_streak5
      Streak Breaker Passive:
        measure_names:
        - win_rate_streak5
        - win_rate_wokillsstreak5
        - churn_total_streak5
        - churn_ingame_streak5
        - churn_between_streak5
    hidden_fields: [uniquestart1, all_extra_moves, target_win_rate, target_diff, eff_diff,
      mean_attempt, unique_start, time_begin_sec, uniquestart1_streak8, churn_between_streak8,
      churn_total_streak8]
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
    listen:
      Platform: users_pdt.user_platform
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Country (Tier): users_pdt.country_tier
      App Version: users_pdt.app_version
      Partner: users_pdt.network
      Campaign: users_pdt.campaign
      Adgroup: users_pdt.adgroup
      Creative: users_pdt.creative
      Level No: progression.user_level_at
    row: 112
    col: 0
    width: 24
    height: 13
  filters:
  - name: Installed Date
    title: Installed Date
    type: field_filter
    default_value: after 2025/03/17
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
  - name: Client Date (only for Engagement)
    title: Client Date (only for Engagement)
    type: field_filter
    default_value: after 2025/03/17
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tile_match
    explore: engagement_pdt
    listens_to_filters: []
    field: engagement_pdt.client_date
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
    explore: users_pdt
    listens_to_filters: []
    field: users_pdt.country
  - name: Country (Tier)
    title: Country (Tier)
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
    field: users_pdt.country_tier
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
    default_value: ios
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: users_pdt
    listens_to_filters: []
    field: users_pdt.user_platform
  - name: Level No
    title: Level No
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
    field: progression.user_level_at
