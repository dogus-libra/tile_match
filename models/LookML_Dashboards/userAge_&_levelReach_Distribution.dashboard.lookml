---
- dashboard: userage__levelreach_distribution
  title: userAge & levelReach Distribution
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: CgTloVKkAP43Bp6nV6CM7M
  elements:
  - title: userAge & levelReach Distribution
    name: userAge & levelReach Distribution
    model: tile_match
    explore: progression
    type: looker_grid
    fields: [userage, level_bins, player_count_0, player_count_1, player_count_2,
      player_count_3, player_count_4, player_count_5, player_count_6, player_count_7,
      player_count_8, player_count_9, player_count_10]
    pivots: [userage]
    filters:
      userage: "[0,10]"
      level_bins: "-TXX Undefined"
      progression.user_level_at: "[1,500]"
    sorts: [userage, player_count_0 desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: round(diff_hours(${raw_pdt.installed_at_date},${progression.event_timestamp_date})/24,0)
      label: userAge
      value_format:
      value_format_name:
      dimension: userage
      _kind_hint: dimension
      _type_hint: number
    - category: dimension
      description: ''
      label: Level Bins
      value_format:
      value_format_name:
      calculation_type: bin
      dimension: level_bins
      args:
      - progression.user_level_at
      -
      -
      -
      - - '1'
        - '14'
        - '21'
        - '31'
        - '41'
        - '51'
        - '61'
        - '71'
        - '81'
        - '91'
        - '101'
        - '121'
        - '141'
        - '161'
        - '181'
        - '201'
        - '241'
        - '281'
        - '321'
        - '351'
        - '401'
        - '451'
        - '501'
      - classic
      _kind_hint: dimension
      _type_hint: string
    - category: measure
      expression:
      label: Player Count 0
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: player_count_0
      type: count_distinct
      _type_hint: number
      filters:
        userage: '0'
    - category: measure
      expression:
      label: Player Count 1
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: player_count_1
      type: count_distinct
      _type_hint: number
      filters:
        userage: '1'
    - category: measure
      expression:
      label: Player Count 2
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: player_count_2
      type: count_distinct
      _type_hint: number
      filters:
        userage: '2'
    - category: measure
      expression:
      label: Player Count 3
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: player_count_3
      type: count_distinct
      _type_hint: number
      filters:
        userage: '3'
    - category: measure
      expression:
      label: Player Count 4
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: player_count_4
      type: count_distinct
      _type_hint: number
      filters:
        userage: '4'
    - category: measure
      expression:
      label: Player Count 5
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: player_count_5
      type: count_distinct
      _type_hint: number
      filters:
        userage: '5'
    - category: measure
      expression:
      label: Player Count 6
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: player_count_6
      type: count_distinct
      _type_hint: number
      filters:
        userage: '6'
    - category: measure
      expression:
      label: Player Count 7
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: player_count_7
      type: count_distinct
      _type_hint: number
      filters:
        userage: '7'
    - category: measure
      expression:
      label: Player Count 8
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: player_count_8
      type: count_distinct
      _type_hint: number
      filters:
        userage: '8'
    - category: measure
      expression:
      label: Player Count 9
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: player_count_9
      type: count_distinct
      _type_hint: number
      filters:
        userage: '9'
    - category: measure
      expression:
      label: Player Count 10
      value_format:
      value_format_name:
      based_on: progression.advertising_id
      _kind_hint: measure
      measure: player_count_10
      type: count_distinct
      _type_hint: number
      filters:
        userage: '10'
    - category: table_calculation
      expression: pivot_index((${player_count_0} / sum(${player_count_0})),1)
      label: "% of 0"
      value_format:
      value_format_name: percent_1
      _kind_hint: supermeasure
      table_calculation: of_0
      _type_hint: number
    - category: table_calculation
      expression: pivot_index((${player_count_1} / sum(${player_count_1})),2)
      label: "% of 1"
      value_format:
      value_format_name: percent_1
      _kind_hint: supermeasure
      table_calculation: of_1
      _type_hint: number
    - category: table_calculation
      expression: pivot_index((${player_count_2} / sum(${player_count_2})),3)
      label: "% of 2"
      value_format:
      value_format_name: percent_1
      _kind_hint: supermeasure
      table_calculation: of_2
      _type_hint: number
    - category: table_calculation
      expression: pivot_index((${player_count_3} / sum(${player_count_3})),4)
      label: "% of 3"
      value_format:
      value_format_name: percent_1
      _kind_hint: supermeasure
      table_calculation: of_3
      _type_hint: number
    - category: table_calculation
      expression: pivot_index((${player_count_4} / sum(${player_count_4})),5)
      label: "% of 4"
      value_format:
      value_format_name: percent_1
      _kind_hint: supermeasure
      table_calculation: of_4
      _type_hint: number
    - category: table_calculation
      expression: pivot_index((${player_count_5} / sum(${player_count_5})),6)
      label: "% of 5"
      value_format:
      value_format_name: percent_1
      _kind_hint: supermeasure
      table_calculation: of_5
      _type_hint: number
    - category: table_calculation
      expression: pivot_index((${player_count_6} / sum(${player_count_6})),7)
      label: "% of 6"
      value_format:
      value_format_name: percent_1
      _kind_hint: supermeasure
      table_calculation: of_6
      _type_hint: number
    - category: table_calculation
      expression: pivot_index((${player_count_7} / sum(${player_count_7})),8)
      label: "% of 7"
      value_format:
      value_format_name: percent_1
      _kind_hint: supermeasure
      table_calculation: of_7
      _type_hint: number
    - category: table_calculation
      expression: pivot_index((${player_count_8} / sum(${player_count_8})),9)
      label: "% of 8"
      value_format:
      value_format_name: percent_1
      _kind_hint: supermeasure
      table_calculation: of_8
      _type_hint: number
    - category: table_calculation
      expression: pivot_index((${player_count_9} / sum(${player_count_9})),10)
      label: "% of 9"
      value_format:
      value_format_name: percent_1
      _kind_hint: supermeasure
      table_calculation: of_9
      _type_hint: number
    - category: table_calculation
      expression: pivot_index((${player_count_10} / sum(${player_count_10})),11)
      label: "% of 10"
      value_format:
      value_format_name: percent_1
      _kind_hint: supermeasure
      table_calculation: of_10
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
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
    series_text_format:
      level_bins:
        align: center
      userage:
        align: center
      of_0:
        align: center
      of_1:
        align: center
      of_2:
        align: center
      of_3:
        align: center
      of_4:
        align: center
      of_5:
        align: center
      of_6:
        align: center
      of_7:
        align: center
      of_8:
        align: center
      of_9:
        align: center
      of_10:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab, options: {steps: 5, mirror: false,
            reverse: false, constraints: {mid: {type: middle}}}}, bold: false, italic: false,
        strikethrough: false, fields: [of_0]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [of_1]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [of_2]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [of_3]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [of_4]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [of_5]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [of_6]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [of_7]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [of_8]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [of_9]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [of_10]}]
    hidden_pivots: {}
    hidden_fields: [player_count_0, player_count_1, player_count_2, player_count_3,
      player_count_4, player_count_5, player_count_6, player_count_7, player_count_8,
      player_count_9, player_count_10]
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
      Installed Date: progression.installed_date
      Adgroup: raw_pdt.adgroup
      App Version: raw_pdt.app_version
      Campaign: raw_pdt.campaign
      Country: raw_pdt.country
      Creative: raw_pdt.creative
      Client Date: progression.event_timestamp_date
      Platform: progression.user_platform
      Partner: raw_pdt.network
    row: 0
    col: 0
    width: 24
    height: 11
  filters:
  - name: Installed Date
    title: Installed Date
    type: field_filter
    default_value: 60 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tile_match
    explore: progression
    listens_to_filters: []
    field: progression.installed_date
  - name: Client Date
    title: Client Date
    type: field_filter
    default_value: 30 day
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
    explore: progression
    listens_to_filters: []
    field: progression.user_platform
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
