include: "/models/tile_match.model.lkml"

view: meta_ndt {
  derived_table: {
    explore_source: live_ops {
      column: advertising_id {
        field: live_ops.advertising_id
      }
      column: total_started {
        field: live_ops.total_started
      }
      column: total_completed {
        field: live_ops.total_completed
      }
    }
  }

  # NDT'den gelen sütunları dimension olarak tanımlıyoruz
  dimension: advertising_id {
    type: string
    primary_key: yes
    description: "Kullanıcının unique ID'si"
  }

  dimension: total_started {
    type: number
  }

  dimension: total_completed {
    type: number
  }

  dimension: meta_completion_rate {
    type: number
    sql:
      CASE
        WHEN ${total_started} > 0
        THEN (${total_completed} * 1.0 / ${total_started})
        ELSE 0
      END ;;
      value_format_name: percent_1
    }

    dimension: meta_completion_tier {
      type: string
      case: {
        when: {
          sql: ${meta_completion_rate} = 1 ;;
          label: "Full"
        }
        when: {
          sql: ${meta_completion_rate} > 0.5 ;;
          label: "%50'den Fazla"
        }
        when: {
          sql: ${meta_completion_rate} > 0 ;;
          label: "%50'den az"
        }
        else: "Hiç Bitirmedi"
      }
    }
  }
